import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter_myshop_app/domain/auth/auth_failure.dart';
import 'package:flutter_myshop_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_myshop_app/domain/auth/user.dart';
import 'package:flutter_myshop_app/domain/auth/value_objects.dart';
import 'package:injectable/injectable.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(
    this._firebaseAuth,
  );

  @override
  Future<Option<User>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() => Future.wait([
        _firebaseAuth.signOut(),
      ]);

  @override
  Future<Either<AuthFailure, Either<VerificationId, Unit>>> verifyPhoneNumber(
      {required String phoneNumber}) async {
    bool isCompleted = false;
    bool hasError = false;
    bool isInvalidPhoneNumber = false;
    bool isTooManyRequests = false;
    String? _verificationId;

    Completer futureCompleter = Completer();
    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        _firebaseAuth.signInWithCredential(credential);
        futureCompleter.complete();
        isCompleted = true;
      },
      verificationFailed: (FirebaseAuthException e) {
        if (e.code == 'invalid-phone-number') {
          isInvalidPhoneNumber = true;
        } else if (e.code == 'too-many-requests') {
          isTooManyRequests = true;
        }
        hasError = true;
        futureCompleter.complete();
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
        futureCompleter.complete();
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    await futureCompleter.future;
    if (hasError) {
      if (isInvalidPhoneNumber) {
        return left(const AuthFailure.invalidPhoneNumber());
      } else if (isTooManyRequests) {
        return left(const AuthFailure.tooManyRequests());
      } else {
        return left(const AuthFailure.serverError());
      }
    } else if (_verificationId != null) {
      return right(left(VerificationId(_verificationId!)));
    } else if (isCompleted) {
      return right(right(unit));
    } else {
      throw Exception('Unexpected Exception');
    }
  }

  Future<Either<AuthFailure, Unit>> signInWithPhone({
    required VerificationId verificationId,
    required String code,
  }) async {
    final PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: verificationId.getOrCrash(),
      smsCode: code,
    );
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseException catch (e) {
      if (e.code == 'invalid-verification-code') {
        return left(const AuthFailure.invalidVerificationCode());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
    return right(unit);
  }
}

import 'package:dartz/dartz.dart';
import 'package:flutter_myshop_app/domain/auth/auth_failure.dart';
import 'package:flutter_myshop_app/domain/auth/user.dart';
import 'package:flutter_myshop_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Either<VerificationId, Unit>>> verifyPhoneNumber({
    required String phoneNumber,
  });
  Future<Either<AuthFailure, Unit>> signInWithPhone({
    required VerificationId verificationId,
    required String code,
  });
  Future<void> signOut();
}

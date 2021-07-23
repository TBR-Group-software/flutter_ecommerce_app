import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_myshop_app/domain/auth/auth_failure.dart';
import 'package:flutter_myshop_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_myshop_app/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_form_event.dart';
part 'auth_form_state.dart';
part 'auth_form_bloc.freezed.dart';

@injectable
class AuthFormBloc extends Bloc<AuthFormEvent, AuthFormState> {
  final IAuthFacade _authFacade;

  AuthFormBloc(this._authFacade) : super(AuthFormState.initial());

  @override
  Stream<AuthFormState> mapEventToState(
    AuthFormEvent event,
  ) async* {
    yield* event.map(
      verificationCodeChanged: (e) async* {
        yield state.copyWith(
          verificationCode: VerificationCode(e.codeStr),
        );
      },
      verifyPhoneNumber: (_VerifyPhoneNumber value) async* {
        String _errorMessage = '';
        VerificationId _verificationId = VerificationId('');
        bool _hasError = false;
        bool _hasVerificationId = false;
        bool _authIsCompleted = false;

        final Either<AuthFailure, Either<VerificationId, Unit>>
            failureOrSuccess =
            await _authFacade.verifyPhoneNumber(phoneNumber: value.phoneNumber);
        await failureOrSuccess.fold(
          (AuthFailure failure) {
            if (failure == AuthFailure.invalidPhoneNumber()) {
              _errorMessage = 'Invalid phone number';
            } else if (failure == AuthFailure.tooManyRequests()) {
              _errorMessage = 'Too many attempts. Try again later';
            } else if (failure == AuthFailure.serverError()) {
              _errorMessage = 'Authentication server error';
            }
            _hasError = true;
          },
          (Either<VerificationId, Unit> option) {
            option.fold(
              (VerificationId verificationId) {
                _verificationId = verificationId;
                if (_verificationId.getOrCrash().isNotEmpty) {
                  _hasVerificationId = true;
                }
              },
              (_) {
                _authIsCompleted = true;
              },
            );
          },
        );
        if (_hasError) {
          yield state.copyWith(
            errorMessage: _errorMessage,
          );
        } else if (_hasVerificationId) {
          yield state.copyWith(
            verificationId: _verificationId,
            phoneNumber: value.phoneNumber,
            isWaitingforCode: true,
          );
        } else if (_authIsCompleted) {
          yield state.copyWith(
            isCompleted: true,
          );
        }
      },
      signInWithPhone: (_SignInWithPhone value) async* {
        String _errorMessage = '';
        bool _isUnit = false;
        bool _hasError = false;

        yield state.copyWith(
          errorMessage: '',
          isCodeAuthorizing: true,
        );
        final failureOrSuccess = await _authFacade.signInWithPhone(
          verificationId: state.verificationId,
          code: state.verificationCode.getOrCrash(),
        );
        await failureOrSuccess.fold(
          (AuthFailure failure) {
            if (failure == AuthFailure.invalidVerificationCode()) {
              _errorMessage = 'Invalid verification code';
            } else if (failure == AuthFailure.serverError()) {
              _errorMessage = 'Authentication server error';
            }
            if (_errorMessage.isNotEmpty) {
              _hasError = true;
            }
          },
          (_) {
            _isUnit = true;
          },
        );
        if (_hasError) {
          yield state.copyWith(
            errorMessage: _errorMessage,
          );
        } else if (_isUnit) {
          yield state.copyWith(
            isCompleted: true,
          );
        }
      },
    );
  }
}

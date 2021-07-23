part of 'auth_form_bloc.dart';

@freezed
class AuthFormState with _$AuthFormState {
  const factory AuthFormState({
    required VerificationId verificationId,
    required VerificationCode verificationCode,
    required String phoneNumber,
    required String errorMessage,
    required bool isWaitingforCode,
    required bool isCodeAuthorizing,
    required bool isCompleted,
    required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _AuthFormState;

  factory AuthFormState.initial() => AuthFormState(
        verificationId: VerificationId(''),
        verificationCode: VerificationCode(''),
        phoneNumber: '',
        errorMessage: '',
        isWaitingforCode: false,
        isCodeAuthorizing: false,
        isCompleted: false,
        authFailureOrSuccessOption: none(),
      );
}

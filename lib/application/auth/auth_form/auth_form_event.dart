part of 'auth_form_bloc.dart';

@freezed
class AuthFormEvent with _$AuthFormEvent {
  const factory AuthFormEvent.verificationCodeChanged(String codeStr) =
      _VerificationCodeChanged;
  const factory AuthFormEvent.verifyPhoneNumber(String phoneNumber) =
      _VerifyPhoneNumber;
  const factory AuthFormEvent.signInWithPhone() = _SignInWithPhone;
}

import 'package:dartz/dartz.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class VerificationId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory VerificationId(String input) {
    return VerificationId._(validateStringNotEmpty(input));
  }

  const VerificationId._(this.value);
}

class VerificationCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory VerificationCode(String input) {
    return VerificationCode._(validateVerificationCode(input));
  }

  const VerificationCode._(this.value);
}

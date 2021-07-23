// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  ServerError serverError() {
    return const ServerError();
  }

  InvalidPhoneNumber invalidPhoneNumber() {
    return const InvalidPhoneNumber();
  }

  InvalidVerificationCode invalidVerificationCode() {
    return const InvalidVerificationCode();
  }

  TooManyRequests tooManyRequests() {
    return const TooManyRequests();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidVerificationCode,
    required TResult Function() tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidVerificationCode,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidVerificationCode,
    required TResult Function() tooManyRequests,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidVerificationCode,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidPhoneNumberCopyWith<$Res> {
  factory $InvalidPhoneNumberCopyWith(
          InvalidPhoneNumber value, $Res Function(InvalidPhoneNumber) then) =
      _$InvalidPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidPhoneNumberCopyWith<$Res> {
  _$InvalidPhoneNumberCopyWithImpl(
      InvalidPhoneNumber _value, $Res Function(InvalidPhoneNumber) _then)
      : super(_value, (v) => _then(v as InvalidPhoneNumber));

  @override
  InvalidPhoneNumber get _value => super._value as InvalidPhoneNumber;
}

/// @nodoc

class _$InvalidPhoneNumber implements InvalidPhoneNumber {
  const _$InvalidPhoneNumber();

  @override
  String toString() {
    return 'AuthFailure.invalidPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidVerificationCode,
    required TResult Function() tooManyRequests,
  }) {
    return invalidPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidVerificationCode,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return invalidPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (invalidPhoneNumber != null) {
      return invalidPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class InvalidPhoneNumber implements AuthFailure {
  const factory InvalidPhoneNumber() = _$InvalidPhoneNumber;
}

/// @nodoc
abstract class $InvalidVerificationCodeCopyWith<$Res> {
  factory $InvalidVerificationCodeCopyWith(InvalidVerificationCode value,
          $Res Function(InvalidVerificationCode) then) =
      _$InvalidVerificationCodeCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidVerificationCodeCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidVerificationCodeCopyWith<$Res> {
  _$InvalidVerificationCodeCopyWithImpl(InvalidVerificationCode _value,
      $Res Function(InvalidVerificationCode) _then)
      : super(_value, (v) => _then(v as InvalidVerificationCode));

  @override
  InvalidVerificationCode get _value => super._value as InvalidVerificationCode;
}

/// @nodoc

class _$InvalidVerificationCode implements InvalidVerificationCode {
  const _$InvalidVerificationCode();

  @override
  String toString() {
    return 'AuthFailure.invalidVerificationCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InvalidVerificationCode);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidVerificationCode,
    required TResult Function() tooManyRequests,
  }) {
    return invalidVerificationCode();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidVerificationCode,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return invalidVerificationCode(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (invalidVerificationCode != null) {
      return invalidVerificationCode(this);
    }
    return orElse();
  }
}

abstract class InvalidVerificationCode implements AuthFailure {
  const factory InvalidVerificationCode() = _$InvalidVerificationCode;
}

/// @nodoc
abstract class $TooManyRequestsCopyWith<$Res> {
  factory $TooManyRequestsCopyWith(
          TooManyRequests value, $Res Function(TooManyRequests) then) =
      _$TooManyRequestsCopyWithImpl<$Res>;
}

/// @nodoc
class _$TooManyRequestsCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $TooManyRequestsCopyWith<$Res> {
  _$TooManyRequestsCopyWithImpl(
      TooManyRequests _value, $Res Function(TooManyRequests) _then)
      : super(_value, (v) => _then(v as TooManyRequests));

  @override
  TooManyRequests get _value => super._value as TooManyRequests;
}

/// @nodoc

class _$TooManyRequests implements TooManyRequests {
  const _$TooManyRequests();

  @override
  String toString() {
    return 'AuthFailure.tooManyRequests()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is TooManyRequests);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() serverError,
    required TResult Function() invalidPhoneNumber,
    required TResult Function() invalidVerificationCode,
    required TResult Function() tooManyRequests,
  }) {
    return tooManyRequests();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? serverError,
    TResult Function()? invalidPhoneNumber,
    TResult Function()? invalidVerificationCode,
    TResult Function()? tooManyRequests,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerError value) serverError,
    required TResult Function(InvalidPhoneNumber value) invalidPhoneNumber,
    required TResult Function(InvalidVerificationCode value)
        invalidVerificationCode,
    required TResult Function(TooManyRequests value) tooManyRequests,
  }) {
    return tooManyRequests(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerError value)? serverError,
    TResult Function(InvalidPhoneNumber value)? invalidPhoneNumber,
    TResult Function(InvalidVerificationCode value)? invalidVerificationCode,
    TResult Function(TooManyRequests value)? tooManyRequests,
    required TResult orElse(),
  }) {
    if (tooManyRequests != null) {
      return tooManyRequests(this);
    }
    return orElse();
  }
}

abstract class TooManyRequests implements AuthFailure {
  const factory TooManyRequests() = _$TooManyRequests;
}

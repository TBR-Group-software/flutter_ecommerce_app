// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFormEventTearOff {
  const _$AuthFormEventTearOff();

  _VerificationCodeChanged verificationCodeChanged(String codeStr) {
    return _VerificationCodeChanged(
      codeStr,
    );
  }

  _VerifyPhoneNumber verifyPhoneNumber(String phoneNumber) {
    return _VerifyPhoneNumber(
      phoneNumber,
    );
  }

  _SignInWithPhone signInWithPhone() {
    return const _SignInWithPhone();
  }
}

/// @nodoc
const $AuthFormEvent = _$AuthFormEventTearOff();

/// @nodoc
mixin _$AuthFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeStr) verificationCodeChanged,
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() signInWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeStr)? verificationCodeChanged,
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? signInWithPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationCodeChanged value)
        verificationCodeChanged,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SignInWithPhone value) signInWithPhone,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationCodeChanged value)? verificationCodeChanged,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SignInWithPhone value)? signInWithPhone,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormEventCopyWith<$Res> {
  factory $AuthFormEventCopyWith(
          AuthFormEvent value, $Res Function(AuthFormEvent) then) =
      _$AuthFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFormEventCopyWithImpl<$Res>
    implements $AuthFormEventCopyWith<$Res> {
  _$AuthFormEventCopyWithImpl(this._value, this._then);

  final AuthFormEvent _value;
  // ignore: unused_field
  final $Res Function(AuthFormEvent) _then;
}

/// @nodoc
abstract class _$VerificationCodeChangedCopyWith<$Res> {
  factory _$VerificationCodeChangedCopyWith(_VerificationCodeChanged value,
          $Res Function(_VerificationCodeChanged) then) =
      __$VerificationCodeChangedCopyWithImpl<$Res>;
  $Res call({String codeStr});
}

/// @nodoc
class __$VerificationCodeChangedCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements _$VerificationCodeChangedCopyWith<$Res> {
  __$VerificationCodeChangedCopyWithImpl(_VerificationCodeChanged _value,
      $Res Function(_VerificationCodeChanged) _then)
      : super(_value, (v) => _then(v as _VerificationCodeChanged));

  @override
  _VerificationCodeChanged get _value =>
      super._value as _VerificationCodeChanged;

  @override
  $Res call({
    Object? codeStr = freezed,
  }) {
    return _then(_VerificationCodeChanged(
      codeStr == freezed
          ? _value.codeStr
          : codeStr // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerificationCodeChanged implements _VerificationCodeChanged {
  const _$_VerificationCodeChanged(this.codeStr);

  @override
  final String codeStr;

  @override
  String toString() {
    return 'AuthFormEvent.verificationCodeChanged(codeStr: $codeStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerificationCodeChanged &&
            (identical(other.codeStr, codeStr) ||
                const DeepCollectionEquality().equals(other.codeStr, codeStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(codeStr);

  @JsonKey(ignore: true)
  @override
  _$VerificationCodeChangedCopyWith<_VerificationCodeChanged> get copyWith =>
      __$VerificationCodeChangedCopyWithImpl<_VerificationCodeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeStr) verificationCodeChanged,
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() signInWithPhone,
  }) {
    return verificationCodeChanged(codeStr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeStr)? verificationCodeChanged,
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? signInWithPhone,
    required TResult orElse(),
  }) {
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(codeStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationCodeChanged value)
        verificationCodeChanged,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SignInWithPhone value) signInWithPhone,
  }) {
    return verificationCodeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationCodeChanged value)? verificationCodeChanged,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SignInWithPhone value)? signInWithPhone,
    required TResult orElse(),
  }) {
    if (verificationCodeChanged != null) {
      return verificationCodeChanged(this);
    }
    return orElse();
  }
}

abstract class _VerificationCodeChanged implements AuthFormEvent {
  const factory _VerificationCodeChanged(String codeStr) =
      _$_VerificationCodeChanged;

  String get codeStr => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerificationCodeChangedCopyWith<_VerificationCodeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$VerifyPhoneNumberCopyWith<$Res> {
  factory _$VerifyPhoneNumberCopyWith(
          _VerifyPhoneNumber value, $Res Function(_VerifyPhoneNumber) then) =
      __$VerifyPhoneNumberCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class __$VerifyPhoneNumberCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements _$VerifyPhoneNumberCopyWith<$Res> {
  __$VerifyPhoneNumberCopyWithImpl(
      _VerifyPhoneNumber _value, $Res Function(_VerifyPhoneNumber) _then)
      : super(_value, (v) => _then(v as _VerifyPhoneNumber));

  @override
  _VerifyPhoneNumber get _value => super._value as _VerifyPhoneNumber;

  @override
  $Res call({
    Object? phoneNumber = freezed,
  }) {
    return _then(_VerifyPhoneNumber(
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyPhoneNumber implements _VerifyPhoneNumber {
  const _$_VerifyPhoneNumber(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'AuthFormEvent.verifyPhoneNumber(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyPhoneNumber &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  _$VerifyPhoneNumberCopyWith<_VerifyPhoneNumber> get copyWith =>
      __$VerifyPhoneNumberCopyWithImpl<_VerifyPhoneNumber>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeStr) verificationCodeChanged,
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() signInWithPhone,
  }) {
    return verifyPhoneNumber(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeStr)? verificationCodeChanged,
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? signInWithPhone,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationCodeChanged value)
        verificationCodeChanged,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SignInWithPhone value) signInWithPhone,
  }) {
    return verifyPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationCodeChanged value)? verificationCodeChanged,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SignInWithPhone value)? signInWithPhone,
    required TResult orElse(),
  }) {
    if (verifyPhoneNumber != null) {
      return verifyPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhoneNumber implements AuthFormEvent {
  const factory _VerifyPhoneNumber(String phoneNumber) = _$_VerifyPhoneNumber;

  String get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerifyPhoneNumberCopyWith<_VerifyPhoneNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignInWithPhoneCopyWith<$Res> {
  factory _$SignInWithPhoneCopyWith(
          _SignInWithPhone value, $Res Function(_SignInWithPhone) then) =
      __$SignInWithPhoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignInWithPhoneCopyWithImpl<$Res>
    extends _$AuthFormEventCopyWithImpl<$Res>
    implements _$SignInWithPhoneCopyWith<$Res> {
  __$SignInWithPhoneCopyWithImpl(
      _SignInWithPhone _value, $Res Function(_SignInWithPhone) _then)
      : super(_value, (v) => _then(v as _SignInWithPhone));

  @override
  _SignInWithPhone get _value => super._value as _SignInWithPhone;
}

/// @nodoc

class _$_SignInWithPhone implements _SignInWithPhone {
  const _$_SignInWithPhone();

  @override
  String toString() {
    return 'AuthFormEvent.signInWithPhone()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SignInWithPhone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String codeStr) verificationCodeChanged,
    required TResult Function(String phoneNumber) verifyPhoneNumber,
    required TResult Function() signInWithPhone,
  }) {
    return signInWithPhone();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String codeStr)? verificationCodeChanged,
    TResult Function(String phoneNumber)? verifyPhoneNumber,
    TResult Function()? signInWithPhone,
    required TResult orElse(),
  }) {
    if (signInWithPhone != null) {
      return signInWithPhone();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerificationCodeChanged value)
        verificationCodeChanged,
    required TResult Function(_VerifyPhoneNumber value) verifyPhoneNumber,
    required TResult Function(_SignInWithPhone value) signInWithPhone,
  }) {
    return signInWithPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerificationCodeChanged value)? verificationCodeChanged,
    TResult Function(_VerifyPhoneNumber value)? verifyPhoneNumber,
    TResult Function(_SignInWithPhone value)? signInWithPhone,
    required TResult orElse(),
  }) {
    if (signInWithPhone != null) {
      return signInWithPhone(this);
    }
    return orElse();
  }
}

abstract class _SignInWithPhone implements AuthFormEvent {
  const factory _SignInWithPhone() = _$_SignInWithPhone;
}

/// @nodoc
class _$AuthFormStateTearOff {
  const _$AuthFormStateTearOff();

  _AuthFormState call(
      {required VerificationId verificationId,
      required VerificationCode verificationCode,
      required String phoneNumber,
      required String errorMessage,
      required bool isWaitingforCode,
      required bool isCodeAuthorizing,
      required bool isCompleted,
      required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption}) {
    return _AuthFormState(
      verificationId: verificationId,
      verificationCode: verificationCode,
      phoneNumber: phoneNumber,
      errorMessage: errorMessage,
      isWaitingforCode: isWaitingforCode,
      isCodeAuthorizing: isCodeAuthorizing,
      isCompleted: isCompleted,
      authFailureOrSuccessOption: authFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AuthFormState = _$AuthFormStateTearOff();

/// @nodoc
mixin _$AuthFormState {
  VerificationId get verificationId => throw _privateConstructorUsedError;
  VerificationCode get verificationCode => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isWaitingforCode => throw _privateConstructorUsedError;
  bool get isCodeAuthorizing => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFormStateCopyWith<AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFormStateCopyWith<$Res> {
  factory $AuthFormStateCopyWith(
          AuthFormState value, $Res Function(AuthFormState) then) =
      _$AuthFormStateCopyWithImpl<$Res>;
  $Res call(
      {VerificationId verificationId,
      VerificationCode verificationCode,
      String phoneNumber,
      String errorMessage,
      bool isWaitingforCode,
      bool isCodeAuthorizing,
      bool isCompleted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$AuthFormStateCopyWithImpl<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  _$AuthFormStateCopyWithImpl(this._value, this._then);

  final AuthFormState _value;
  // ignore: unused_field
  final $Res Function(AuthFormState) _then;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? verificationCode = freezed,
    Object? phoneNumber = freezed,
    Object? errorMessage = freezed,
    Object? isWaitingforCode = freezed,
    Object? isCodeAuthorizing = freezed,
    Object? isCompleted = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as VerificationId,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isWaitingforCode: isWaitingforCode == freezed
          ? _value.isWaitingforCode
          : isWaitingforCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodeAuthorizing: isCodeAuthorizing == freezed
          ? _value.isCodeAuthorizing
          : isCodeAuthorizing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$AuthFormStateCopyWith<$Res>
    implements $AuthFormStateCopyWith<$Res> {
  factory _$AuthFormStateCopyWith(
          _AuthFormState value, $Res Function(_AuthFormState) then) =
      __$AuthFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {VerificationId verificationId,
      VerificationCode verificationCode,
      String phoneNumber,
      String errorMessage,
      bool isWaitingforCode,
      bool isCodeAuthorizing,
      bool isCompleted,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$AuthFormStateCopyWithImpl<$Res>
    extends _$AuthFormStateCopyWithImpl<$Res>
    implements _$AuthFormStateCopyWith<$Res> {
  __$AuthFormStateCopyWithImpl(
      _AuthFormState _value, $Res Function(_AuthFormState) _then)
      : super(_value, (v) => _then(v as _AuthFormState));

  @override
  _AuthFormState get _value => super._value as _AuthFormState;

  @override
  $Res call({
    Object? verificationId = freezed,
    Object? verificationCode = freezed,
    Object? phoneNumber = freezed,
    Object? errorMessage = freezed,
    Object? isWaitingforCode = freezed,
    Object? isCodeAuthorizing = freezed,
    Object? isCompleted = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_AuthFormState(
      verificationId: verificationId == freezed
          ? _value.verificationId
          : verificationId // ignore: cast_nullable_to_non_nullable
              as VerificationId,
      verificationCode: verificationCode == freezed
          ? _value.verificationCode
          : verificationCode // ignore: cast_nullable_to_non_nullable
              as VerificationCode,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isWaitingforCode: isWaitingforCode == freezed
          ? _value.isWaitingforCode
          : isWaitingforCode // ignore: cast_nullable_to_non_nullable
              as bool,
      isCodeAuthorizing: isCodeAuthorizing == freezed
          ? _value.isCodeAuthorizing
          : isCodeAuthorizing // ignore: cast_nullable_to_non_nullable
              as bool,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthFormState implements _AuthFormState {
  const _$_AuthFormState(
      {required this.verificationId,
      required this.verificationCode,
      required this.phoneNumber,
      required this.errorMessage,
      required this.isWaitingforCode,
      required this.isCodeAuthorizing,
      required this.isCompleted,
      required this.authFailureOrSuccessOption});

  @override
  final VerificationId verificationId;
  @override
  final VerificationCode verificationCode;
  @override
  final String phoneNumber;
  @override
  final String errorMessage;
  @override
  final bool isWaitingforCode;
  @override
  final bool isCodeAuthorizing;
  @override
  final bool isCompleted;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'AuthFormState(verificationId: $verificationId, verificationCode: $verificationCode, phoneNumber: $phoneNumber, errorMessage: $errorMessage, isWaitingforCode: $isWaitingforCode, isCodeAuthorizing: $isCodeAuthorizing, isCompleted: $isCompleted, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthFormState &&
            (identical(other.verificationId, verificationId) ||
                const DeepCollectionEquality()
                    .equals(other.verificationId, verificationId)) &&
            (identical(other.verificationCode, verificationCode) ||
                const DeepCollectionEquality()
                    .equals(other.verificationCode, verificationCode)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)) &&
            (identical(other.isWaitingforCode, isWaitingforCode) ||
                const DeepCollectionEquality()
                    .equals(other.isWaitingforCode, isWaitingforCode)) &&
            (identical(other.isCodeAuthorizing, isCodeAuthorizing) ||
                const DeepCollectionEquality()
                    .equals(other.isCodeAuthorizing, isCodeAuthorizing)) &&
            (identical(other.isCompleted, isCompleted) ||
                const DeepCollectionEquality()
                    .equals(other.isCompleted, isCompleted)) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(verificationId) ^
      const DeepCollectionEquality().hash(verificationCode) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(errorMessage) ^
      const DeepCollectionEquality().hash(isWaitingforCode) ^
      const DeepCollectionEquality().hash(isCodeAuthorizing) ^
      const DeepCollectionEquality().hash(isCompleted) ^
      const DeepCollectionEquality().hash(authFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      __$AuthFormStateCopyWithImpl<_AuthFormState>(this, _$identity);
}

abstract class _AuthFormState implements AuthFormState {
  const factory _AuthFormState(
      {required VerificationId verificationId,
      required VerificationCode verificationCode,
      required String phoneNumber,
      required String errorMessage,
      required bool isWaitingforCode,
      required bool isCodeAuthorizing,
      required bool isCompleted,
      required Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_AuthFormState;

  @override
  VerificationId get verificationId => throw _privateConstructorUsedError;
  @override
  VerificationCode get verificationCode => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  bool get isWaitingforCode => throw _privateConstructorUsedError;
  @override
  bool get isCodeAuthorizing => throw _privateConstructorUsedError;
  @override
  bool get isCompleted => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthFormStateCopyWith<_AuthFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

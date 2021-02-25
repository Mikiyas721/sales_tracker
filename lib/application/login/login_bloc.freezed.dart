// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$LoginEventTearOff {
  const _$LoginEventTearOff();

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  SubmitPhoneNumber submitPhoneNumber() {
    return const SubmitPhoneNumber();
  }
}

/// @nodoc
// ignore: unused_element
const $LoginEvent = _$LoginEventTearOff();

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult submitPhoneNumber(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phoneNumberChanged(String phoneNumber),
    TResult submitPhoneNumber(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult submitPhoneNumber(SubmitPhoneNumber value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult submitPhoneNumber(SubmitPhoneNumber value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  final LoginEvent _value;
  // ignore: unused_field
  final $Res Function(LoginEvent) _then;
}

/// @nodoc
abstract class $PhoneNumberChangedCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(
          PhoneNumberChanged value, $Res Function(PhoneNumberChanged) then) =
      _$PhoneNumberChangedCopyWithImpl<$Res>;
  $Res call({String phoneNumber});
}

/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(
      PhoneNumberChanged _value, $Res Function(PhoneNumberChanged) _then)
      : super(_value, (v) => _then(v as PhoneNumberChanged));

  @override
  PhoneNumberChanged get _value => super._value as PhoneNumberChanged;

  @override
  $Res call({
    Object phoneNumber = freezed,
  }) {
    return _then(PhoneNumberChanged(
      phoneNumber == freezed ? _value.phoneNumber : phoneNumber as String,
    ));
  }
}

/// @nodoc
class _$PhoneNumberChanged implements PhoneNumberChanged {
  const _$PhoneNumberChanged(this.phoneNumber) : assert(phoneNumber != null);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhoneNumberChanged &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phoneNumber);

  @JsonKey(ignore: true)
  @override
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith =>
      _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult submitPhoneNumber(),
  }) {
    assert(phoneNumberChanged != null);
    assert(submitPhoneNumber != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phoneNumberChanged(String phoneNumber),
    TResult submitPhoneNumber(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult submitPhoneNumber(SubmitPhoneNumber value),
  }) {
    assert(phoneNumberChanged != null);
    assert(submitPhoneNumber != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult submitPhoneNumber(SubmitPhoneNumber value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements LoginEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $SubmitPhoneNumberCopyWith<$Res> {
  factory $SubmitPhoneNumberCopyWith(
          SubmitPhoneNumber value, $Res Function(SubmitPhoneNumber) then) =
      _$SubmitPhoneNumberCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmitPhoneNumberCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res>
    implements $SubmitPhoneNumberCopyWith<$Res> {
  _$SubmitPhoneNumberCopyWithImpl(
      SubmitPhoneNumber _value, $Res Function(SubmitPhoneNumber) _then)
      : super(_value, (v) => _then(v as SubmitPhoneNumber));

  @override
  SubmitPhoneNumber get _value => super._value as SubmitPhoneNumber;
}

/// @nodoc
class _$SubmitPhoneNumber implements SubmitPhoneNumber {
  const _$SubmitPhoneNumber();

  @override
  String toString() {
    return 'LoginEvent.submitPhoneNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SubmitPhoneNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult submitPhoneNumber(),
  }) {
    assert(phoneNumberChanged != null);
    assert(submitPhoneNumber != null);
    return submitPhoneNumber();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult phoneNumberChanged(String phoneNumber),
    TResult submitPhoneNumber(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPhoneNumber != null) {
      return submitPhoneNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult submitPhoneNumber(SubmitPhoneNumber value),
  }) {
    assert(phoneNumberChanged != null);
    assert(submitPhoneNumber != null);
    return submitPhoneNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult submitPhoneNumber(SubmitPhoneNumber value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (submitPhoneNumber != null) {
      return submitPhoneNumber(this);
    }
    return orElse();
  }
}

abstract class SubmitPhoneNumber implements LoginEvent {
  const factory SubmitPhoneNumber() = _$SubmitPhoneNumber;
}

/// @nodoc
class _$LoginStateTearOff {
  const _$LoginStateTearOff();

// ignore: unused_element
  _LoginState call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool isRequesting,
      bool hasRequested}) {
    return _LoginState(
      phoneNumber: phoneNumber,
      showErrorMessage: showErrorMessage,
      isRequesting: isRequesting,
      hasRequested: hasRequested,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $LoginState = _$LoginStateTearOff();

/// @nodoc
mixin _$LoginState {
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  bool get showErrorMessage;
  bool get isRequesting;
  bool get hasRequested;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool isRequesting,
      bool hasRequested});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object showErrorMessage = freezed,
    Object isRequesting = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isRequesting:
          isRequesting == freezed ? _value.isRequesting : isRequesting as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool isRequesting,
      bool hasRequested});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object phoneNumber = freezed,
    Object showErrorMessage = freezed,
    Object isRequesting = freezed,
    Object hasRequested = freezed,
  }) {
    return _then(_LoginState(
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      isRequesting:
          isRequesting == freezed ? _value.isRequesting : isRequesting as bool,
      hasRequested:
          hasRequested == freezed ? _value.hasRequested : hasRequested as bool,
    ));
  }
}

/// @nodoc
class _$_LoginState implements _LoginState {
  const _$_LoginState(
      {this.phoneNumber,
      this.showErrorMessage,
      this.isRequesting,
      this.hasRequested});

  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final bool showErrorMessage;
  @override
  final bool isRequesting;
  @override
  final bool hasRequested;

  @override
  String toString() {
    return 'LoginState(phoneNumber: $phoneNumber, showErrorMessage: $showErrorMessage, isRequesting: $isRequesting, hasRequested: $hasRequested)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.isRequesting, isRequesting) ||
                const DeepCollectionEquality()
                    .equals(other.isRequesting, isRequesting)) &&
            (identical(other.hasRequested, hasRequested) ||
                const DeepCollectionEquality()
                    .equals(other.hasRequested, hasRequested)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(isRequesting) ^
      const DeepCollectionEquality().hash(hasRequested);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool isRequesting,
      bool hasRequested}) = _$_LoginState;

  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  bool get showErrorMessage;
  @override
  bool get isRequesting;
  @override
  bool get hasRequested;
  @override
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith;
}

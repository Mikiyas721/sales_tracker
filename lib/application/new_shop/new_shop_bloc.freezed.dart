// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewShopStateTearOff {
  const _$NewShopStateTearOff();

// ignore: unused_element
  _NewShopState call(
      {Either<NameFailure, Name> name,
      Either<AddressFailure, Address> address,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> addShopFailure,
      bool hasSubmitted,
      bool isAdding,
      bool hasAdded}) {
    return _NewShopState(
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      addShopFailure: addShopFailure,
      hasSubmitted: hasSubmitted,
      isAdding: isAdding,
      hasAdded: hasAdded,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $NewShopState = _$NewShopStateTearOff();

/// @nodoc
mixin _$NewShopState {
  Either<NameFailure, Name> get name;
  Either<AddressFailure, Address> get address;
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  Option<Failure> get addShopFailure;
  bool get hasSubmitted;
  bool get isAdding;
  bool get hasAdded;

  @JsonKey(ignore: true)
  $NewShopStateCopyWith<NewShopState> get copyWith;
}

/// @nodoc
abstract class $NewShopStateCopyWith<$Res> {
  factory $NewShopStateCopyWith(
          NewShopState value, $Res Function(NewShopState) then) =
      _$NewShopStateCopyWithImpl<$Res>;
  $Res call(
      {Either<NameFailure, Name> name,
      Either<AddressFailure, Address> address,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> addShopFailure,
      bool hasSubmitted,
      bool isAdding,
      bool hasAdded});
}

/// @nodoc
class _$NewShopStateCopyWithImpl<$Res> implements $NewShopStateCopyWith<$Res> {
  _$NewShopStateCopyWithImpl(this._value, this._then);

  final NewShopState _value;
  // ignore: unused_field
  final $Res Function(NewShopState) _then;

  @override
  $Res call({
    Object name = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
    Object addShopFailure = freezed,
    Object hasSubmitted = freezed,
    Object isAdding = freezed,
    Object hasAdded = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as Either<NameFailure, Name>,
      address: address == freezed
          ? _value.address
          : address as Either<AddressFailure, Address>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      addShopFailure: addShopFailure == freezed
          ? _value.addShopFailure
          : addShopFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      hasAdded: hasAdded == freezed ? _value.hasAdded : hasAdded as bool,
    ));
  }
}

/// @nodoc
abstract class _$NewShopStateCopyWith<$Res>
    implements $NewShopStateCopyWith<$Res> {
  factory _$NewShopStateCopyWith(
          _NewShopState value, $Res Function(_NewShopState) then) =
      __$NewShopStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<NameFailure, Name> name,
      Either<AddressFailure, Address> address,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> addShopFailure,
      bool hasSubmitted,
      bool isAdding,
      bool hasAdded});
}

/// @nodoc
class __$NewShopStateCopyWithImpl<$Res> extends _$NewShopStateCopyWithImpl<$Res>
    implements _$NewShopStateCopyWith<$Res> {
  __$NewShopStateCopyWithImpl(
      _NewShopState _value, $Res Function(_NewShopState) _then)
      : super(_value, (v) => _then(v as _NewShopState));

  @override
  _NewShopState get _value => super._value as _NewShopState;

  @override
  $Res call({
    Object name = freezed,
    Object address = freezed,
    Object phoneNumber = freezed,
    Object addShopFailure = freezed,
    Object hasSubmitted = freezed,
    Object isAdding = freezed,
    Object hasAdded = freezed,
  }) {
    return _then(_NewShopState(
      name: name == freezed ? _value.name : name as Either<NameFailure, Name>,
      address: address == freezed
          ? _value.address
          : address as Either<AddressFailure, Address>,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber as Either<PhoneNumberFailure, PhoneNumber>,
      addShopFailure: addShopFailure == freezed
          ? _value.addShopFailure
          : addShopFailure as Option<Failure>,
      hasSubmitted:
          hasSubmitted == freezed ? _value.hasSubmitted : hasSubmitted as bool,
      isAdding: isAdding == freezed ? _value.isAdding : isAdding as bool,
      hasAdded: hasAdded == freezed ? _value.hasAdded : hasAdded as bool,
    ));
  }
}

/// @nodoc
class _$_NewShopState implements _NewShopState {
  const _$_NewShopState(
      {this.name,
      this.address,
      this.phoneNumber,
      this.addShopFailure,
      this.hasSubmitted,
      this.isAdding,
      this.hasAdded});

  @override
  final Either<NameFailure, Name> name;
  @override
  final Either<AddressFailure, Address> address;
  @override
  final Either<PhoneNumberFailure, PhoneNumber> phoneNumber;
  @override
  final Option<Failure> addShopFailure;
  @override
  final bool hasSubmitted;
  @override
  final bool isAdding;
  @override
  final bool hasAdded;

  @override
  String toString() {
    return 'NewShopState(name: $name, address: $address, phoneNumber: $phoneNumber, addShopFailure: $addShopFailure, hasSubmitted: $hasSubmitted, isAdding: $isAdding, hasAdded: $hasAdded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewShopState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.addShopFailure, addShopFailure) ||
                const DeepCollectionEquality()
                    .equals(other.addShopFailure, addShopFailure)) &&
            (identical(other.hasSubmitted, hasSubmitted) ||
                const DeepCollectionEquality()
                    .equals(other.hasSubmitted, hasSubmitted)) &&
            (identical(other.isAdding, isAdding) ||
                const DeepCollectionEquality()
                    .equals(other.isAdding, isAdding)) &&
            (identical(other.hasAdded, hasAdded) ||
                const DeepCollectionEquality()
                    .equals(other.hasAdded, hasAdded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(addShopFailure) ^
      const DeepCollectionEquality().hash(hasSubmitted) ^
      const DeepCollectionEquality().hash(isAdding) ^
      const DeepCollectionEquality().hash(hasAdded);

  @JsonKey(ignore: true)
  @override
  _$NewShopStateCopyWith<_NewShopState> get copyWith =>
      __$NewShopStateCopyWithImpl<_NewShopState>(this, _$identity);
}

abstract class _NewShopState implements NewShopState {
  const factory _NewShopState(
      {Either<NameFailure, Name> name,
      Either<AddressFailure, Address> address,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      Option<Failure> addShopFailure,
      bool hasSubmitted,
      bool isAdding,
      bool hasAdded}) = _$_NewShopState;

  @override
  Either<NameFailure, Name> get name;
  @override
  Either<AddressFailure, Address> get address;
  @override
  Either<PhoneNumberFailure, PhoneNumber> get phoneNumber;
  @override
  Option<Failure> get addShopFailure;
  @override
  bool get hasSubmitted;
  @override
  bool get isAdding;
  @override
  bool get hasAdded;
  @override
  @JsonKey(ignore: true)
  _$NewShopStateCopyWith<_NewShopState> get copyWith;
}

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'new_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$NewShopEventTearOff {
  const _$NewShopEventTearOff();

// ignore: unused_element
  NameChanged nameChanged(String name) {
    return NameChanged(
      name,
    );
  }

// ignore: unused_element
  AddressChanged addressChanged(String address) {
    return AddressChanged(
      address,
    );
  }

// ignore: unused_element
  PhoneNumberChanged phoneNumberChanged(String phoneNumber) {
    return PhoneNumberChanged(
      phoneNumber,
    );
  }

// ignore: unused_element
  AddNewShop addNewShop() {
    return const AddNewShop();
  }
}

/// @nodoc
// ignore: unused_element
const $NewShopEvent = _$NewShopEventTearOff();

/// @nodoc
mixin _$NewShopEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult addressChanged(String address),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult addNewShop(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult addressChanged(String address),
    TResult phoneNumberChanged(String phoneNumber),
    TResult addNewShop(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult addressChanged(AddressChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult addNewShop(AddNewShop value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult addressChanged(AddressChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult addNewShop(AddNewShop value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $NewShopEventCopyWith<$Res> {
  factory $NewShopEventCopyWith(
          NewShopEvent value, $Res Function(NewShopEvent) then) =
      _$NewShopEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewShopEventCopyWithImpl<$Res> implements $NewShopEventCopyWith<$Res> {
  _$NewShopEventCopyWithImpl(this._value, this._then);

  final NewShopEvent _value;
  // ignore: unused_field
  final $Res Function(NewShopEvent) _then;
}

/// @nodoc
abstract class $NameChangedCopyWith<$Res> {
  factory $NameChangedCopyWith(
          NameChanged value, $Res Function(NameChanged) then) =
      _$NameChangedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$NameChangedCopyWithImpl<$Res> extends _$NewShopEventCopyWithImpl<$Res>
    implements $NameChangedCopyWith<$Res> {
  _$NameChangedCopyWithImpl(
      NameChanged _value, $Res Function(NameChanged) _then)
      : super(_value, (v) => _then(v as NameChanged));

  @override
  NameChanged get _value => super._value as NameChanged;

  @override
  $Res call({
    Object name = freezed,
  }) {
    return _then(NameChanged(
      name == freezed ? _value.name : name as String,
    ));
  }
}

/// @nodoc
class _$NameChanged implements NameChanged {
  const _$NameChanged(this.name) : assert(name != null);

  @override
  final String name;

  @override
  String toString() {
    return 'NewShopEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is NameChanged &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $NameChangedCopyWith<NameChanged> get copyWith =>
      _$NameChangedCopyWithImpl<NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult addressChanged(String address),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult addNewShop(),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult addressChanged(String address),
    TResult phoneNumberChanged(String phoneNumber),
    TResult addNewShop(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult addressChanged(AddressChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult addNewShop(AddNewShop value),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult addressChanged(AddressChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult addNewShop(AddNewShop value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements NewShopEvent {
  const factory NameChanged(String name) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  $NameChangedCopyWith<NameChanged> get copyWith;
}

/// @nodoc
abstract class $AddressChangedCopyWith<$Res> {
  factory $AddressChangedCopyWith(
          AddressChanged value, $Res Function(AddressChanged) then) =
      _$AddressChangedCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AddressChangedCopyWithImpl<$Res>
    extends _$NewShopEventCopyWithImpl<$Res>
    implements $AddressChangedCopyWith<$Res> {
  _$AddressChangedCopyWithImpl(
      AddressChanged _value, $Res Function(AddressChanged) _then)
      : super(_value, (v) => _then(v as AddressChanged));

  @override
  AddressChanged get _value => super._value as AddressChanged;

  @override
  $Res call({
    Object address = freezed,
  }) {
    return _then(AddressChanged(
      address == freezed ? _value.address : address as String,
    ));
  }
}

/// @nodoc
class _$AddressChanged implements AddressChanged {
  const _$AddressChanged(this.address) : assert(address != null);

  @override
  final String address;

  @override
  String toString() {
    return 'NewShopEvent.addressChanged(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddressChanged &&
            (identical(other.address, address) ||
                const DeepCollectionEquality().equals(other.address, address)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(address);

  @JsonKey(ignore: true)
  @override
  $AddressChangedCopyWith<AddressChanged> get copyWith =>
      _$AddressChangedCopyWithImpl<AddressChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult addressChanged(String address),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult addNewShop(),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return addressChanged(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult addressChanged(String address),
    TResult phoneNumberChanged(String phoneNumber),
    TResult addNewShop(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult addressChanged(AddressChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult addNewShop(AddNewShop value),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return addressChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult addressChanged(AddressChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult addNewShop(AddNewShop value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addressChanged != null) {
      return addressChanged(this);
    }
    return orElse();
  }
}

abstract class AddressChanged implements NewShopEvent {
  const factory AddressChanged(String address) = _$AddressChanged;

  String get address;
  @JsonKey(ignore: true)
  $AddressChangedCopyWith<AddressChanged> get copyWith;
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
    extends _$NewShopEventCopyWithImpl<$Res>
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
    return 'NewShopEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
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
    @required TResult nameChanged(String name),
    @required TResult addressChanged(String address),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult addNewShop(),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult addressChanged(String address),
    TResult phoneNumberChanged(String phoneNumber),
    TResult addNewShop(),
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
    @required TResult nameChanged(NameChanged value),
    @required TResult addressChanged(AddressChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult addNewShop(AddNewShop value),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult addressChanged(AddressChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult addNewShop(AddNewShop value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class PhoneNumberChanged implements NewShopEvent {
  const factory PhoneNumberChanged(String phoneNumber) = _$PhoneNumberChanged;

  String get phoneNumber;
  @JsonKey(ignore: true)
  $PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith;
}

/// @nodoc
abstract class $AddNewShopCopyWith<$Res> {
  factory $AddNewShopCopyWith(
          AddNewShop value, $Res Function(AddNewShop) then) =
      _$AddNewShopCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddNewShopCopyWithImpl<$Res> extends _$NewShopEventCopyWithImpl<$Res>
    implements $AddNewShopCopyWith<$Res> {
  _$AddNewShopCopyWithImpl(AddNewShop _value, $Res Function(AddNewShop) _then)
      : super(_value, (v) => _then(v as AddNewShop));

  @override
  AddNewShop get _value => super._value as AddNewShop;
}

/// @nodoc
class _$AddNewShop implements AddNewShop {
  const _$AddNewShop();

  @override
  String toString() {
    return 'NewShopEvent.addNewShop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AddNewShop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult nameChanged(String name),
    @required TResult addressChanged(String address),
    @required TResult phoneNumberChanged(String phoneNumber),
    @required TResult addNewShop(),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return addNewShop();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult nameChanged(String name),
    TResult addressChanged(String address),
    TResult phoneNumberChanged(String phoneNumber),
    TResult addNewShop(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNewShop != null) {
      return addNewShop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult nameChanged(NameChanged value),
    @required TResult addressChanged(AddressChanged value),
    @required TResult phoneNumberChanged(PhoneNumberChanged value),
    @required TResult addNewShop(AddNewShop value),
  }) {
    assert(nameChanged != null);
    assert(addressChanged != null);
    assert(phoneNumberChanged != null);
    assert(addNewShop != null);
    return addNewShop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult nameChanged(NameChanged value),
    TResult addressChanged(AddressChanged value),
    TResult phoneNumberChanged(PhoneNumberChanged value),
    TResult addNewShop(AddNewShop value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (addNewShop != null) {
      return addNewShop(this);
    }
    return orElse();
  }
}

abstract class AddNewShop implements NewShopEvent {
  const factory AddNewShop() = _$AddNewShop;
}

/// @nodoc
class _$NewShopStateTearOff {
  const _$NewShopStateTearOff();

// ignore: unused_element
  _NewShopState call(
      {Either<NameFailure, Name> name,
      Either<AddressFailure, Address> address,
      Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
      bool showErrorMessage,
      bool hasSubmitted,
      bool isAdding,
      bool hasAdded}) {
    return _NewShopState(
      name: name,
      address: address,
      phoneNumber: phoneNumber,
      showErrorMessage: showErrorMessage,
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
  bool get showErrorMessage;
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
      bool showErrorMessage,
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
    Object showErrorMessage = freezed,
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
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
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
      bool showErrorMessage,
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
    Object showErrorMessage = freezed,
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
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
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
      this.showErrorMessage,
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
  final bool showErrorMessage;
  @override
  final bool hasSubmitted;
  @override
  final bool isAdding;
  @override
  final bool hasAdded;

  @override
  String toString() {
    return 'NewShopState(name: $name, address: $address, phoneNumber: $phoneNumber, showErrorMessage: $showErrorMessage, hasSubmitted: $hasSubmitted, isAdding: $isAdding, hasAdded: $hasAdded)';
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
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
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
      const DeepCollectionEquality().hash(showErrorMessage) ^
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
      bool showErrorMessage,
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
  bool get showErrorMessage;
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

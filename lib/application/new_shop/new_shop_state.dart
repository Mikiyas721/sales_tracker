part of 'new_shop_bloc.dart';

@freezed
abstract class NewShopState extends BlocState with _$NewShopState {
  const factory NewShopState({
    Either<NameFailure, Name> name,
    Either<AddressFailure, Address> address,
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Option<Failure> addShopFailure,
    bool hasSubmitted,
    bool isAdding,
    bool hasAdded,
  }) = _NewShopState;

  factory NewShopState.initial() => NewShopState(
      name: Name.create(''),
      address: Address.create(''),
      phoneNumber: PhoneNumber.create(''),
      addShopFailure: none(),
      hasSubmitted: false,
      isAdding: false,
      hasAdded: false);
}

part of 'new_shop_bloc.dart';

@freezed
abstract class NewShopState extends BlocState with _$NewShopState {
  const factory NewShopState({
    Either<NameFailure, Name> name,
    Either<AddressFailure, Address> address,
    Either<PhoneNumberFailure, PhoneNumber> phoneNumber,
    Failure addShopFailure,
    bool showErrorMessage,
    bool hasSubmitted,
    bool isAdding,
    bool hasAdded,
  }) = _NewShopState;

  factory NewShopState.initial() => NewShopState(
      name: null,
      address: null,
      phoneNumber: null,
      showErrorMessage: false,
      hasSubmitted: false,
      isAdding: false,
      hasAdded: false);
}

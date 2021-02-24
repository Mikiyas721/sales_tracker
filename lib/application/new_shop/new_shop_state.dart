part of 'new_shop_bloc.dart';

@immutable
@freezed
abstract class NewShopState
    with _$NewShopState {
  const factory NewShopState({
    @required Name name,
    @required String address,
    @required PhoneNumber phoneNumber,
    @required bool showNameError,
    @required bool showAddressError,
    @required bool showPhoneNumberError,
    @required bool isAdding,
    @required bool hasAdded
  }) = _NewShopState;

  factory NewShopState.initial()=>
      NewShopState(name: null,
          address: null,
          phoneNumber: null,
          showNameError: false,
          showAddressError: false,
          showPhoneNumberError: false,
          isAdding: false, hasAdded: false);
}

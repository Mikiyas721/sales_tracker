part of 'new_shop_bloc.dart';

@immutable
@freezed
abstract class NewShopEvent with _$NewShopEvent {
  const factory NewShopEvent.nameChanged(String name) = NameChanged;
  const factory NewShopEvent.addressChanged(String address) = AddressChanged;
  const factory NewShopEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory NewShopEvent.addNewShop() = AddNewShop;
}

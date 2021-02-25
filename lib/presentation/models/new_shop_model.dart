import 'package:sales_tracker/common/view_model.dart';

class NewShopViewModel extends ViewModel {
  final String name;
  final String nameError;
  final String address;
  final String addressError;
  final String phoneNumber;
  final String phoneNumberError;
  final bool isAdding;

  NewShopViewModel({
    this.name,
    this.nameError,
    this.address,
    this.addressError,
    this.phoneNumber,
    this.phoneNumberError,
    this.isAdding,
  });

  @override
  List<Object> get props => [
    name,
    nameError,
    address,
    addressError,
    phoneNumber,
    phoneNumberError,
    isAdding,
  ];
}

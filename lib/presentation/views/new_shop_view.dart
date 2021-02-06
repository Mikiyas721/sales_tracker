import 'package:flutter/material.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../presentation/models/new_shop_model.dart';

class NewShopView extends StatelessWidget {
  final NewShopViewModel newShopViewModel;
  final void Function(String name) onNameChanged;
  final void Function(String address) onAddressChanged;
  final void Function(String phoneNumber) onPhoneNumberChanged;
  final VoidCallback onAdd;

  const NewShopView(
      {Key key,
      @required this.newShopViewModel,
      @required this.onAdd,
      @required this.onNameChanged,
      @required this.onAddressChanged,
      @required this.onPhoneNumberChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTextField(
            icon: Icons.person_outline,
            labelText: 'name',
            errorText: newShopViewModel.nameError,
            onChanged: onNameChanged),
        MyTextField(
            icon: Icons.location_on,
            labelText: 'address',
            errorText: newShopViewModel.addressError,
            onChanged: onAddressChanged),
        MyTextField(
            icon: Icons.phone,
            labelText: 'phone number',
            errorText: newShopViewModel.phoneNumberError,
            onChanged: onPhoneNumberChanged),
        Spacer(),
        MyButton(label: 'Add', onSubmit: onAdd)
      ],
    );
  }
}

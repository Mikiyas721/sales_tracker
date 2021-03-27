import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/new_shop_controller.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../presentation/models/new_shop_model.dart';
import '../../common/common.dart';

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
    final newShopController = Provider.of<NewShopController>(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyTextField(
            icon: Icons.person_outline,
            labelText: 'newShopPage.name'.tr,
            errorText: newShopViewModel.nameError,
            keyboardType: TextInputType.text,
            controller: newShopController.nameTextFieldController,
            onChanged: onNameChanged),
        MyTextField(
            icon: Icons.location_on,
            labelText: 'newShopPage.address'.tr,
            errorText: newShopViewModel.addressError,
            keyboardType: TextInputType.text,
            controller: newShopController.addressTextFieldController,
            onChanged: onAddressChanged),
        MyTextField(
            icon: Icons.phone,
            labelText: 'newShopPage.phoneNumber'.tr,
            errorText: newShopViewModel.phoneNumberError,
            controller: newShopController.phoneTextFieldController,
            onChanged: onPhoneNumberChanged),
        200.vSpace,
        MyButton(
          label: 'newShopPage.add'.tr,
          onSubmit: onAdd,
          isLoading: newShopViewModel.isAdding,
        ),
      ],
    );
  }
}

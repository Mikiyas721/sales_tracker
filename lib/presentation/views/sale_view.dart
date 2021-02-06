import 'package:flutter/material.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../presentation/models/sale_view_model.dart';
import '../../common/common.dart';

class SaleView extends StatelessWidget {
  final SaleViewModel saleViewModel;
  final void Function(String totalAmount) onTotalAmount;
  final void Function(String paidAmount) onPaidAmount;
  final VoidCallback onRegister;

  const SaleView({
    Key key,
    @required this.saleViewModel,
    this.onTotalAmount,
    this.onPaidAmount,
    this.onRegister,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Transaction with ${saleViewModel.phoneNumber}'),
        40.vSpace,
        MyTextField(
            icon: Icons.money,
            labelText: 'total amount',
            errorText: saleViewModel.totalAmountError,
            onChanged: onTotalAmount),
        MyTextField(
            icon: Icons.attach_money,
            labelText: 'paid amount',
            errorText: saleViewModel.paidAmountError,
            onChanged: onPaidAmount),
        Spacer(),
        MyButton(label: 'Register', onSubmit: onRegister)
      ],
    );
  }
}

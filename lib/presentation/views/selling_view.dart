import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_sale_controller.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../presentation/models/sale_view_model.dart';
import '../../common/common.dart';

class SellingView extends StatelessWidget {
  final SaleViewModel saleViewModel;
  final void Function(String totalAmount) onTotalAmount;
  final void Function(String paidAmount) onPaidAmount;
  final VoidCallback onRegister;

  const SellingView({
    Key key,
    @required this.saleViewModel,
    @required this.onTotalAmount,
    @required this.onPaidAmount,
    @required this.onRegister,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddSaleController>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextField(
            icon: Icons.money,
            labelText: 'total amount',
            errorText: saleViewModel.totalAmountError,
            controller: controller.totalAmountTextFieldController,
            onChanged: onTotalAmount),
        MyTextField(
            icon: Icons.attach_money,
            labelText: 'paid amount',
            errorText: saleViewModel.paidAmountError,
            controller: controller.paidAmountTextFieldController,
            onChanged: onPaidAmount),
        165.vSpace,
        MyButton(label: 'Register', onSubmit: onRegister, isLoading: saleViewModel.isRegistering,),
      ],
    );
  }
}

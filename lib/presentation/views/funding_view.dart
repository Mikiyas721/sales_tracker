import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_fund_controller.dart';
import '../../presentation/models/fund_view_model.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../common/common.dart';

class FundingView extends StatelessWidget {
  final FundViewModel fundViewModel;
  final void Function(String value) onAmountChanged;
  final VoidCallback onFund;

  const FundingView(
      {Key key,
      @required this.fundViewModel,
      this.onAmountChanged,
      this.onFund})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<AddFundController>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextField(
          icon: Icons.attach_money,
          labelText: 'fundingPage.amount'.tr,
          errorText: fundViewModel.amountError,
          onChanged: onAmountChanged,
          controller: controller.paidAmountTextFieldController,
        ),
        200.vSpace,
        MyButton(
          label: 'fundingPage.buttonLabel'.tr,
          onSubmit: onFund,
          isLoading: fundViewModel.isFunding
        )
      ],
    );
  }
}

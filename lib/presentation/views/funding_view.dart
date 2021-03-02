import 'package:flutter/material.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyTextField(
            icon: Icons.attach_money,
            labelText: 'amount',
            errorText: fundViewModel.amountError,
            onChanged: onAmountChanged),
        200.vSpace,
        MyButton(label: 'Fund', onSubmit: onFund)
      ],
    );
  }
}
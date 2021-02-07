import 'package:flutter/material.dart';
import '../../presentation/models/fund_view_model.dart';
import '../../presentation/widgets/my_button.dart';
import '../../presentation/widgets/my_text_field.dart';
import '../../common/common.dart';

class FundView extends StatelessWidget {
  final FundViewModel fundViewModel;
  final void Function(String value) onAmountChanged;
  final VoidCallback onFund;

  const FundView(
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
        Text(
          'Funding for ${fundViewModel.phoneNumber}',
          style: context.headline4,
        ),
        100.vSpace,
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

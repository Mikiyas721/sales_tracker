import 'package:flutter/material.dart';
import '../../presentation/models/fund_view_model.dart';
import '../../presentation/views/fund_view.dart';
import '../../common/common.dart';

class FundingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fund'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\namount',
                style: context.headline3,
              ),
              100.vSpace,
              FundView(
                fundViewModel: FundViewModel(phoneNumber: '251 941135730'),
                onFund: () {},
              ),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}

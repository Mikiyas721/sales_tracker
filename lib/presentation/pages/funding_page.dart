import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_fund_controller.dart';
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
              Text(
                'Funding for 251 941135730',
                style: context.headline4,
              ),
              100.vSpace,
              ViewModelBuilder.withController<FundViewModel,
                      AddFundController>(
                  create: () => AddFundController(context),
                  //TODO Pass ShopId as parameter
                  builder: (context, controller, model) {
                    return FundView(
                      fundViewModel: model,
                      onFund: controller.onRegister,
                    );
                  }),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}

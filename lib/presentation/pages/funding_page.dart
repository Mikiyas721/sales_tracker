import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_fund_controller.dart';
import 'package:sales_tracker/presentation/models/my_shops_view_model.dart';
import '../../presentation/models/fund_view_model.dart';
import '../../presentation/views/funding_view.dart';
import '../../common/common.dart';

class FundingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShopViewModel shop = ModalRoute.of(context).settings.arguments;
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
                'Funding for ${shop.phoneNumber}',
                style: context.headline4,
              ),
              100.vSpace,
              ViewModelBuilder.withController<FundViewModel,
                      AddFundController>(
                  create: () => AddFundController(context, shop.id),
                  //TODO Pass ShopId as parameter
                  builder: (context, controller, model) {
                    return FundingView(
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

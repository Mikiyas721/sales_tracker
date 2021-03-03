import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_sale_controller.dart';
import 'package:sales_tracker/presentation/models/my_shops_view_model.dart';
import '../../presentation/models/sale_view_model.dart';
import '../../presentation/views/selling_view.dart';
import '../../common/common.dart';

class SellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShopViewModel shop = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sale'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\ndetails',
                style: context.headline3,
              ),
              100.vSpace,
              Text(
                'Transaction with ${shop.phoneNumber}',
                style: context.headline4,
              ),
              65.vSpace,
              ViewModelBuilder.withController<SaleViewModel,
                      AddSaleController>(
                  create: () => AddSaleController(context, shop.id),
                  builder: (context, controller, model) {
                    return SellingView(
                      saleViewModel: model,
                      onTotalAmount: controller.onTotalAmount,
                      onPaidAmount: controller.onPaidAmount,
                      onRegister: controller.onRegister,
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

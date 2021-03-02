import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/add_sale_controller.dart';
import '../../presentation/models/sale_view_model.dart';
import '../../presentation/views/selling_view.dart';
import '../../common/common.dart';

class SellingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                'Transaction with 251 941135730',
                style: context.headline4,
              ),
              65.vSpace,
              ViewModelBuilder.withController<SaleViewModel,
                      AddSaleController>(
                  create: () => AddSaleController(context),
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
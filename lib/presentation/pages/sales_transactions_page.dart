import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/sale_transaction_controller.dart';
import 'package:sales_tracker/presentation/models/sale_transaction_view_model.dart';
import 'package:sales_tracker/presentation/views/sale_transaction_view.dart';
import '../../common/common.dart';

class SaleTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sale Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<SaleTransactionsViewModel, SaleTransactionController>(
            create: () => SaleTransactionController(context),
            builder: (context, controller, model) {
              controller.loadShops();
              return SaleTransactionsView(
                sales: model,
                onReload: controller.loadShops,
              );
            }),
      ),
    );
  }
}

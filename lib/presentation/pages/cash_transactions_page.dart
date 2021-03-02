import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/cash_transactions_controller.dart';
import 'package:sales_tracker/presentation/views/cash_transactions_view.dart';
import '../../presentation/models/cash_transactions_view_model.dart';
import '../../common/common.dart';

class CashTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<CashTransactionsViewModel, CashTransactionsController>(
          create: () => CashTransactionsController(context),
          onInit: (controller)=> controller.loadShops(),
          builder: (context, controller, model) {
            return CashTransactionsView(
              funds: model,
              onReload: controller.loadShops,
            );
          },
        ),
      ),
    );
  }
}

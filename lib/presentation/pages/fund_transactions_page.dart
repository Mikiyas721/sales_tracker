import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/fund_transactions_controller.dart';
import 'package:sales_tracker/presentation/views/fund_transaction_view.dart';
import '../../presentation/models/fund_transaction_view_model.dart';
import '../../common/common.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fund Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<FundTransactionsViewModel, FundTransactionController>(
            create: () => FundTransactionController(context),
            builder: (context, controller, model) {
              controller.loadShops();
              return FundTransactionsView(
                funds: model,
                onReload: controller.loadShops,
              );
            }),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/card_transactions_controller.dart';
import 'package:sales_tracker/presentation/models/card_transactions_view_model.dart';
import 'package:sales_tracker/presentation/models/my_shops_view_model.dart';
import 'package:sales_tracker/presentation/views/card_transactions_view.dart';
import '../../common/common.dart';

class CardTransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ShopViewModel shopViewModel = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sale Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ViewModelBuilder.withController<CardTransactionsViewModel, CardTransactionsController>(
            create: () => CardTransactionsController(context, shopViewModel.id),
            onInit:  (controller)=>controller.loadShops(),
            builder: (context, controller, model) {
              return CardTransactionsView(
                sales: model,
                onReload: controller.loadShops,
              );
            }),
      ),
    );
  }
}

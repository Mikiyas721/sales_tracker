import 'package:flutter/material.dart';
import 'package:sales_tracker/common/widgets/empty_error_view.dart';
import 'package:sales_tracker/common/widgets/my_loading_view.dart';
import 'package:sales_tracker/common/widgets/simple_list_view.dart';
import '../../presentation/models/card_transactions_view_model.dart';
import '../../common/common.dart';

class CardTransactionsView extends StatelessWidget {
  final CardTransactionsViewModel sales;
  final VoidCallback onReload;

  const CardTransactionsView({Key key, this.sales, this.onReload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<CardTransactionViewModel>(
      model: sales,
      itemBuilder: (BuildContext context, CardTransactionViewModel model) {
        return CardTransactionView._(salesTransactionViewModel: model);
      },
      errorView: Center(
          child: EmptyErrorView.defaultError(
            onAction: onReload,
          )),
      loadingView: Center(child: MyLoadingView()),
      emptyView: Center(
        child: EmptyErrorView.defaultEmpty(),
      ),
    );
  }
}

class CardTransactionView extends StatelessWidget {
  final CardTransactionViewModel salesTransactionViewModel;

  const CardTransactionView._({Key key, @required this.salesTransactionViewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      margin: EdgeInsets.only(top: 9, left: 4, right: 4, bottom: 4),
      child: Container(
        padding: 15.allPadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [Text(salesTransactionViewModel.date, style: context.headline5)],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sold',
                        style: context.headline6,
                      ),
                    ],
                  ),
                  25.hSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${salesTransactionViewModel.amount} ETB'),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 18,
                ),
                Text(
                  salesTransactionViewModel.time,
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

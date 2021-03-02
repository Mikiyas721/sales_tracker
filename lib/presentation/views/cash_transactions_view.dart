import 'package:flutter/material.dart';
import 'package:sales_tracker/common/widgets/empty_error_view.dart';
import 'package:sales_tracker/common/widgets/my_loading_view.dart';
import 'package:sales_tracker/common/widgets/simple_list_view.dart';
import '../models/cash_transactions_view_model.dart';
import '../../common/common.dart';

class CashTransactionsView extends StatelessWidget {
  final CashTransactionsViewModel funds;
  final VoidCallback onReload;

  const CashTransactionsView({Key key, this.funds, this.onReload})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleListView<CashTransactionViewModel>(
      model: funds,
      itemBuilder: (BuildContext context, CashTransactionViewModel model) {
        return CashTransactionView._(fundTransactionViewModel: model);
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

class CashTransactionView extends StatelessWidget {
  final CashTransactionViewModel fundTransactionViewModel;

  const CashTransactionView._({
    Key key,
    @required this.fundTransactionViewModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      elevation: 5,
      margin: EdgeInsets.only(top: 9, left: 4, right: 4, bottom: 4),
      child: Container(
        padding: 15.allPadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(fundTransactionViewModel.date, style: context.headline5)
              ],
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Received',
                        style: context.headline6,
                      ),
                    ],
                  ),
                  25.hSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('${fundTransactionViewModel.amount} ETB')],
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
                  fundTransactionViewModel.time,
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

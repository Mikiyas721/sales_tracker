import 'package:flutter/material.dart';
import '../models/fund_transaction_view_model.dart';
import '../../common/common.dart';

class FundTransactionsView extends StatelessWidget {
  final FundTransactionsViewModel funds;
  final VoidCallback onReload;

  const FundTransactionsView({Key key, this.funds, this.onReload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (funds.isLoading) return Center(child: CircularProgressIndicator());
    if (funds.hasLoaded && funds.list.isEmpty)
      return Center(child: Text('You have no fund transactions'));
    if (funds.loadingError != null)
      return Center(
          child: Column(
            children: [
              Text(funds.loadingError),
              IconButton(icon: Icon(Icons.refresh), onPressed: onReload)
            ],
          ));
    return ListView.builder(
        itemCount: funds.list.length,
        itemBuilder: (BuildContext context, int index) {
          return FundTransactionView._(fundTransactionViewModel: funds.list[index]);
        });
  }
}

class FundTransactionView extends StatelessWidget {
  final FundTransactionViewModel fundTransactionViewModel;

  const FundTransactionView._({
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
                    children: [
                      Text('${fundTransactionViewModel.amount} ETB')
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

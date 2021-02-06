import 'package:flutter/material.dart';
import '../../presentation/models/transaction_view_model.dart';
import '../../common/common.dart';

class TransactionView extends StatelessWidget {
  final TransactionViewModel transactionViewModel;

  const TransactionView({Key key, @required this.transactionViewModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: 10.allPadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(transactionViewModel.date),
                Spacer(),
                Text(transactionViewModel.transactionType)
              ],
            ),
            Row(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sold'),
                    transactionViewModel.receivedAmount == null
                        ? Text('Received')
                        : Container()
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${transactionViewModel.soldAmount} ETB'),
                    transactionViewModel.receivedAmount == null
                        ? Text('${transactionViewModel.receivedAmount} ETB')
                        : Container()
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Icon(Icons.access_time),
                Text(transactionViewModel.time)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

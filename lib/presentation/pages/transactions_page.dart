import 'package:flutter/material.dart';
import '../../presentation/models/transaction_view_model.dart';
import '../../presentation/views/transaction_view.dart';
import '../../common/common.dart';

class TransactionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (BuildContext context, int index) {
              return TransactionView(
                transactionViewModel: TransactionViewModel(
                    date: 'Thu, Feb 5,2021',
                    transactionType: 'Sale',
                    receivedAmount: '200',
                    soldAmount: '200',
                    time: '11:02AM'),
              );
            }),
      ),
    );
  }
}

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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))),elevation: 5,
      margin: EdgeInsets.only(top: 9,left: 4,right: 4,bottom: 4),
      child: Container(
        padding: 15.allPadding,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(transactionViewModel.date,style:context.headline5),
                Spacer(),
                Text(transactionViewModel.transactionType,style:context.headline5)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 20,right: 20,bottom: 10,top: 15),
              child: Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sold',style: context.headline6,),
                      transactionViewModel.receivedAmount == null
                          ? Container()
                          : Text('Received',style: context.headline6,)
                    ],
                  ),
                  25.hSpace,
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('${transactionViewModel.soldAmount} ETB'),
                      transactionViewModel.receivedAmount == null
                          ? Container()
                          : Text('${transactionViewModel.receivedAmount} ETB')
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Icon(Icons.access_time,color: Colors.grey,size: 18,),
                Text(transactionViewModel.time,style: TextStyle(color: Colors.grey,fontSize: 12),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

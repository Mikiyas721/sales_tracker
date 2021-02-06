import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/my_shops_view_model.dart';

class MyShopView extends StatelessWidget {
  final MyShopsViewModel myShopViewModel;
  final VoidCallback onSale;
  final VoidCallback onFund;
  final VoidCallback onTransaction;

  const MyShopView(
      {Key key,
      @required this.myShopViewModel,
      this.onSale,
      this.onFund,
      this.onTransaction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      child: ListTile(
        title: Text(myShopViewModel.name),
        subtitle:
            Text('${myShopViewModel.phoneNumber}\n${myShopViewModel.location}'),
        isThreeLine: true,
      ),
      actions: [
        IconSlideAction(
          icon: Icons.receipt,
          caption: 'Sale',
          onTap: onSale,
        ),
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Fund',
          onTap: onFund,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Transaction',
          onTap: onTransaction,
        ),
      ],
    );
  }
}

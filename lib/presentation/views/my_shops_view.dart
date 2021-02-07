import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../common/common.dart';

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
        leading: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Icon(Icons.shopping_cart),
        ),
        title: Text(myShopViewModel.name),
        subtitle: Text(
          '${myShopViewModel.phoneNumber}\n${myShopViewModel.location}',
          style: TextStyle(color: Colors.grey,fontSize: 12),
        ),
        isThreeLine: true,
      ),
      actions: [
        IconSlideAction(
          icon: Icons.receipt,
          caption: 'Sale',
          onTap: onSale,
          color: context.secondaryHeaderColor,
          foregroundColor: Colors.white,
        ),
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Fund',
          onTap: onFund,
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Transaction',
          onTap: onTransaction,
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}

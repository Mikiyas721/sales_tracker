import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../common/common.dart';

class MyShopsView extends StatelessWidget {
  final MyShopsViewModel myShops;
  final VoidCallback onReload;

  const MyShopsView({Key key, this.myShops, this.onReload}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (myShops.isLoading) return Center(child: CircularProgressIndicator());
    if (myShops.hasLoaded && myShops.list.isEmpty)
      return Center(child: Text('You have no shops'));
    if (myShops.loadingError != null)
      return Center(
          child: Column(
        children: [
          Text(myShops.loadingError),
          IconButton(icon: Icon(Icons.refresh), onPressed: onReload)
        ],
      ));
    return ListView.builder(
        itemCount: myShops.list.length,
        itemBuilder: (BuildContext context, int index) {
          return ShopView._(myShopViewModel: myShops.list[index]);
        });
  }
}

class ShopView extends StatelessWidget {
  final ShopViewModel myShopViewModel;

  const ShopView._({
    Key key,
    @required this.myShopViewModel,
  }) : super(key: key);

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
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
        isThreeLine: true,
      ),
      actions: [
        IconSlideAction(
          icon: Icons.receipt,
          caption: 'Sale',
          onTap: () {
            Navigator.pushNamed(context, '/salePage');
          },
          color: context.secondaryHeaderColor,
          foregroundColor: Colors.white,
        ),
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Fund',
          onTap: () {
            Navigator.pushNamed(context, '/fundPage');
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Transaction',
          onTap: () {
            Navigator.pushNamed(context, '/transactionsPage');
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sales_tracker/common/widgets/empty_error_view.dart';
import 'package:sales_tracker/common/widgets/my_loading_view.dart';
import 'package:sales_tracker/common/widgets/simple_list_view.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../common/common.dart';

class MyShopsView extends StatelessWidget {
  final MyShopsViewModel myShops;
  final VoidCallback onReload;
  final VoidCallback onRegister;
  final void Function(String value) onSearch;
  final void Function(String value) onSearchWithSelected;

  const MyShopsView({
    Key key,
    this.myShops,
    this.onReload,
    this.onRegister,
    this.onSearch,
    this.onSearchWithSelected,
  })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leadingWidth: 30,
          title: CupertinoTextField(
            placeholder: 'Look for a shop',
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.black26, width: 0.7),
            ),
            suffix: PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return [
                  CheckedPopupMenuItem(
                    child: Text('Name'),
                    value: 'name',
                    checked: myShops.searchWith == 'name',
                  ),
                  CheckedPopupMenuItem(
                    child: Text('Phone'),
                    value: 'phoneNumber',
                    checked: myShops.searchWith == 'phoneNumber',
                  )
                ];
              }, onSelected:onSearchWithSelected,
            ),
            onChanged: onSearch,
          ),
        ),
        body: SimpleListView<ShopViewModel>(
            model: myShops,
            itemBuilder: (BuildContext context, ShopViewModel model) {
              return ShopView._(myShopViewModel: model);
            },
            errorView: Center(
                child: EmptyErrorView.defaultError(
                  onAction: onReload,
                )),
            loadingView: Center(child: MyLoadingView()),
            emptyView: Center(
                child: EmptyErrorView.defaultEmpty(
                  description:
                  'You have no shops. Click the button below to start registering',
                  actionLabel: 'Register',
                  onAction: onRegister,
                ))));
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
            Navigator.pushNamed(context, '/sellingPage',
                arguments: myShopViewModel);
          },
          color: context.secondaryHeaderColor,
          foregroundColor: Colors.white,
        ),
        IconSlideAction(
          icon: Icons.attach_money,
          caption: 'Fund',
          onTap: () {
            Navigator.pushNamed(context, '/fundingPage',
                arguments: myShopViewModel);
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Card',
          onTap: () {
            Navigator.pushNamed(context, '/cardTransactionsPage',
                arguments: myShopViewModel);
          },
          color: context.primaryColor,
          foregroundColor: Colors.white,
        ),
        IconSlideAction(
          icon: Icons.swap_horiz,
          caption: 'Cash',
          onTap: () {
            Navigator.pushNamed(context, '/cashTransactionsPage',
                arguments: myShopViewModel);
          },
          color: context.secondaryHeaderColor,
          foregroundColor: Colors.white,
        ),
      ],
    );
  }
}

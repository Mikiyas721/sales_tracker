import 'package:flutter/material.dart';
import '../../presentation/models/new_shop_model.dart';
import '../../presentation/views/new_shop_view.dart';
import '../../common/common.dart';

class NewShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Shop'),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              100.vSpace,
              Text(
                'Enter\nshop\ninformation',
                style: context.headline3,
              ),
              40.vSpace,
              NewShopView(
                  newShopViewModel: NewShopViewModel(),
                  onAdd: () {},
                  onNameChanged: (String name) {},
                  onAddressChanged: (String address) {},
                  onPhoneNumberChanged: (String phoneNumber) {}),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}

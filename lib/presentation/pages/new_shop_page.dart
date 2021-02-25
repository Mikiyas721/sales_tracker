import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/new_shop_controller.dart';
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
              ViewModelBuilder.withController<NewShopViewModel, NewShopController>(
                create: () => NewShopController(context),
                builder: (context, controller, model) {
                  return NewShopView(
                    newShopViewModel: model,
                    onAdd: controller.onAddShop,
                    onNameChanged: controller.onNameChanged,
                    onAddressChanged: (String address) {}, //todo
                    onPhoneNumberChanged: (String phoneNumber) {}, //todo
                  );
                },
              ),
              20.vSpace
            ],
          ),
        ),
      ),
    );
  }
}

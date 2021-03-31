import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/new_shop_controller.dart';
import '../../presentation/models/new_shop_model.dart';
import '../../presentation/views/new_shop_view.dart';
import '../../common/common.dart';

class NewShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('newShopPage.newShop'.tr),
      ),
      body: Padding(
        padding: 20.hPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (size.height*0.12).vSpace,
              Text(
                'newShopPage.prompt'.tr,
                style: context.headline3,
              ),
              (size.height*0.05).vSpace,
              ViewModelBuilder.withController<NewShopViewModel, NewShopController>(
                create: () => NewShopController(context),
                builder: (context, controller, model) {
                  return NewShopView(
                    newShopViewModel: model,
                    onAdd: controller.onAddShop,
                    onNameChanged: controller.onNameChanged,
                    onAddressChanged: controller.onAddressChanged,
                    onPhoneNumberChanged: controller.onPhoneNumberChanged,
                  );
                },
              ),
              (size.height*0.025).vSpace
            ],
          ),
        ),
      ),
    );
  }
}

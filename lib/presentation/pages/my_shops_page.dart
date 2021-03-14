import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/my_shops_controller.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../presentation/views/my_shops_view.dart';

class MyShopsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.withController<MyShopsViewModel, MyShopsController>(
        create: () => MyShopsController(context),
        onInit: (controller) => controller.loadShops(),
        builder: (context, controller, model) {
          return MyShopsView(
            myShops: model,
            onReload: controller.loadShops,
            onRegister: controller.onRegister,
            onSearch: controller.onSearch,
            onSearchWithSelected:controller.onSearchWithSelected,
          );
        });
  }
}

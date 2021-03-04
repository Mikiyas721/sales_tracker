import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/my_shops_controller.dart';
import '../../presentation/models/my_shops_view_model.dart';
import '../../presentation/views/my_shops_view.dart';

class MyShopsPage extends StatelessWidget {
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
          onChanged: (String value) {},
        ),
      ),
      body:
          ViewModelBuilder.withController<MyShopsViewModel, MyShopsController>(
              create: () => MyShopsController(context),
              onInit: (controller) => controller.loadShops(),
              builder: (context, controller, model) {
                return MyShopsView(
                  myShops: model,
                  onReload: controller.loadShops,
                  onRegister: controller.onRegister,
                );
              }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/stats_controller.dart';
import 'package:sales_tracker/presentation/models/sales_status_view_model.dart';
import 'package:sales_tracker/presentation/views/sales_status_view.dart';
import '../../presentation/widgets/my_button.dart';
import '../../common/common.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [IconButton(icon: Icon(Icons.logout), onPressed: () {})],
      ),
      body: Padding(
        padding: 20.hPadding,
        child: Column(children: [
          50.vSpace,
          ViewModelBuilder.withController<SalesStatusViewModel,
                  StatsController>(
              create: () => StatsController(context),
              onInit: (controller) => controller,
              builder: (context, controller, model) {
                return SalesStatusView(
                  salesStatusViewModel: model,
                  onToday: controller.onToday,
                  onThisWeek: controller.onThisWeek,
                  onThisMonth: controller.onThisMonth,
                );
              }),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButton(
                label: 'Add Shop',
                onSubmit: () {
                  Navigator.pushNamed(context, '/newShopPage');
                },
                minWidth: width * 0.44,
              ),
              MyButton(
                label: 'My Shops',
                onSubmit: () {
                  Navigator.pushNamed(context, '/myShopsPage');
                },
                minWidth: width * 0.44,
              ),
            ],
          ),
          20.vSpace
        ]),
      ),
    );
  }
}

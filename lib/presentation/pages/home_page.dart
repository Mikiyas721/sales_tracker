import 'package:flutter/material.dart';
import 'package:sales_tracker/application/today_stats/today_stats_bloc.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/today_stats_controller.dart';
import '../../presentation/models/home_view_model.dart';
import '../../presentation/views/home_view.dart';
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
          100.vSpace,
          ViewModelBuilder.withController<HomeViewModel, TodayStatsController>(
              create: () => TodayStatsController(context),
              builder: (context, controller, model) {
                return HomeView(homeViewModel: model);
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

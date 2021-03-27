import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/controllers/login_controller.dart';
import 'package:sales_tracker/presentation/controllers/stats_controller.dart';
import 'package:sales_tracker/presentation/models/sales_status_view_model.dart';
import 'package:sales_tracker/presentation/views/sales_status_view.dart';
import '../../presentation/widgets/my_button.dart';
import '../../common/common.dart';
import '../../application/splash/splash_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: 20.hPadding,
            child: ViewModelBuilder.withController<SalesStatusViewModel,
                    StatsController>(
                create: () => StatsController(context),
                onInit: (controller) => controller.onToday(true),
                builder: (context, controller, model) {
                  return SalesStatusView(
                    salesStatusViewModel: model,
                    onToday: controller.onToday,
                    onThisWeek: controller.onThisWeek,
                    onThisMonth: controller.onThisMonth,
                    onReload: controller.onReload,
                  );
                }),
          ),
          Align(
              alignment: Alignment(0.9, -0.87),
              child: ControllerProvider<LoginController>(
                create: () => LoginController(context),
                builder: (context, controller) {
                  return InkWell(
                    child: CircleAvatar(
                        radius: 24,
                        backgroundColor: Colors.brown,
                        child: Text(
                          getInitials(getIt
                              .get<SplashBloc>()
                              .state
                              .user
                              .getOrElse(() => null)
                              ?.name
                              ?.value),
                          style: TextStyle(color: Colors.white),
                        )),
                    onTap: controller.onAccountTap,
                  );
                },
              )),
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyButton(
                  label: 'homePage.addShop'.tr,
                  onSubmit: () {
                    Navigator.pushNamed(context, '/newShopPage');
                  },
                  minWidth: width * 0.44,
                ),
                MyButton(
                  label: 'homePage.myShops'.tr,
                  onSubmit: () {
                    Navigator.pushNamed(context, '/myShopsPage');
                  },
                  minWidth: width * 0.44,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

String getInitials(String name) {
  if (name == null) return '?';
  List<String> split = name.split(' ');
  if (split.length >= 2)
    return '${split[0][0]}${split[1][0]}';
  else
    return '${split[0][0]}';
}

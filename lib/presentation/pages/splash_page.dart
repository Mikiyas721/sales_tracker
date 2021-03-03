import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/common/view_model.dart';
import 'package:sales_tracker/presentation/controllers/splash_controller.dart';
import '../../common/common.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder.withController<ViewModel, SplashController>(
          create: () => SplashController(context),
          onInit: (controller) => controller.loadUser(),
          builder: (context, controller, model) {
            return Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [context.secondaryHeaderColor, context.primaryColor],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Sales Tracker',
                      style: GoogleFonts.poppins(
                          fontSize: 30, color: Colors.white),
                    ),
                    30.vSpace,
                    SpinKitWave(
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sales_tracker/common/controller/controller_provider.dart';
import 'package:sales_tracker/presentation/controllers/languages_controller.dart';
import 'package:sales_tracker/presentation/models/languages_view_model.dart';
import 'package:sales_tracker/presentation/views/languages_view.dart';

class LanguagesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages'),
      ),
      body: ViewModelBuilder.withController<LanguagesViewModel,
              LanguagesController>(
          create: () => LanguagesController(context),
          onInit: (controller) => controller.loadCurrentLanguage(),
          builder: (context, controller, model) {
            return LanguagesView(
              languagesViewModel: model,
              onLanguageSelected: controller.onLanguageChanged,
            );
          }),
    );
  }
}

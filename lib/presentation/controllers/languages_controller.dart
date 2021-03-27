import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/languages/languages_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/languages_view_model.dart';

class LanguagesController extends BlocViewModelController<LanguagesBloc,
    LanguagesEvent, LanguagesState, LanguagesViewModel> {
  final BuildContext context;

  LanguagesController(this.context) : super(getIt.get<LanguagesBloc>(), true);

  @override
  LanguagesViewModel mapStateToViewModel(LanguagesState s) {
    return LanguagesViewModel(selectedLanguageIndex: s.selectedLanguage);
  }

  void loadCurrentLanguage() {}

  void onLanguageChanged(int selectedIndex) {}
}

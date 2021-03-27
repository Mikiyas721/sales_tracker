import 'package:sales_tracker/common/view_model.dart';

class LanguagesViewModel extends ViewModel {
  final int selectedLanguageIndex;

  LanguagesViewModel({
    this.selectedLanguageIndex,
  });

  @override
  List<Object> get props => [selectedLanguageIndex];
}

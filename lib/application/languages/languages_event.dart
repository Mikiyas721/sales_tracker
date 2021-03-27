part of 'languages_bloc.dart';

abstract class LanguagesEvent extends BlocEvent<LanguagesState> {}

class LanguagesChangedEvent extends LanguagesEvent {
  final int selectedLanguageIndex;

  LanguagesChangedEvent(this.selectedLanguageIndex);

  @override
  Stream<LanguagesState> handle(LanguagesState currentState) async* {
    yield currentState.copyWith(selectedLanguage: selectedLanguageIndex);
  }
}

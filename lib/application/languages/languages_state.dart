part of 'languages_bloc.dart';

@freezed
abstract class LanguagesState extends BlocState with _$LanguagesState {
  const factory LanguagesState({
    int selectedLanguage,
  }) = _LanguagesState;

  factory LanguagesState.initial() => LanguagesState(
        selectedLanguage: 0,
      );
}

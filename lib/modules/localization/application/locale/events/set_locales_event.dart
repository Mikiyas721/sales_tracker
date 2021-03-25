import 'package:flocalizer/flocalizer.dart';
import 'package:sales_tracker/modules/localization/application/locale/locale_bloc.dart';

class SetLocalesEvent implements LocaleEvent {
  final List<FLocale> locales;

  SetLocalesEvent(this.locales);

  @override
  Stream<LocaleState> handle(LocaleState currentState) async* {
    yield currentState.copyWith(
      locales: locales,
    );
  }
}

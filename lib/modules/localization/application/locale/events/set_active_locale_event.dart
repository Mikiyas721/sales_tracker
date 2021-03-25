import 'package:dartz/dartz.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/modules/localization/application/locale/locale_bloc.dart';
import 'package:sales_tracker/modules/localization/domain/use_cases/set_active_locale.dart';

class SetActiveLocaleEvent implements LocaleEvent {
  final String activeLocaleId;
  final SetActiveLocale setActiveLocale=getIt.get();

  SetActiveLocaleEvent(
    this.activeLocaleId,
  );

  @override
  Stream<LocaleState> handle(LocaleState currentState) async*{
    await setActiveLocale.execute(activeLocaleId);
    yield currentState.copyWith(
        activeFLocaleId:some(activeLocaleId),
    );
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flocalizer/flocalizer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/injection.dart';

import 'package:sales_tracker/modules/localization/application/locale/events/set_active_locale_event.dart';
import 'package:sales_tracker/modules/localization/application/locale/events/set_locales_event.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_default_repo.dart';
import 'package:sales_tracker/modules/localization/domain/use_cases/load_active_locale.dart';
import 'package:sales_tracker/modules/localization/domain/use_cases/load_locales.dart';

part 'locale_bloc.freezed.dart';

@freezed
abstract class LocaleState implements _$LocaleState, BlocState {
  const LocaleState._();

  const factory LocaleState.create({
    List<FLocale> locales,
    Option<String> activeFLocaleId,
  }) = _LocaleState;


  Option<FLocale> get activeLocale {
    return activeFLocaleId.fold(
      () => locales.isEmpty ? none() : some(locales[0]),
      (id) {
        final selected = locales.firstWhere((e) => e.id == id, orElse: () => null);
        return selected == null ? none() : some(selected);
      },
    );
  }
}

@immutable
abstract class LocaleEvent implements BlocEvent<LocaleState> {}

@lazySingleton
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final LoadLocales loadLocales;
  final LoadActiveLocaleId loadActiveLocaleId;
  final ILocalesDefaultRepo defaultRepo;
  StreamSubscription sub;
  static final _parser = OperatorsParser.def();

  static LocaleBloc get instance {
    return getIt.get<LocaleBloc>();
  }

  //todo refactor this should not be here
  static String tr(String key, [Map<String, dynamic> args]) {
    return instance.state.activeLocale.fold(() => key, (a) {
      final translation = a.translation;
      final value = translation.getByKey(key);
      return _parser.parse(value, {
        ...?args,
        'translation': translation,
      });
    });
  }

  LocaleBloc(this.loadLocales, this.defaultRepo,this.loadActiveLocaleId) : super(LocaleState.create(
    locales: defaultRepo.getLocales(),
    activeFLocaleId: none()
  )) {
    this.loadActiveLocaleId.execute().then((value) => value.fold(() => null, (a) => this.add(SetActiveLocaleEvent(a))));
    sub = loadLocales.execute().listen((locales) {
      this.add(SetLocalesEvent(locales));
    });
  }

  @override
  Stream<LocaleState> mapEventToState(LocaleEvent event) async* {
    yield* event.handle(state);
  }

  @override
  Future<void> close() {
    sub.cancel();
    return super.close();
  }
}

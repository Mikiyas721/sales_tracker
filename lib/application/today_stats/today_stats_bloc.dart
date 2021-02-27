import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';

part 'today_stats_event.dart';

part 'today_stats_state.dart';

part 'today_stats_bloc.freezed.dart';

@injectable
class TodayStatsBloc extends Bloc<TodayStatsEvent, TodayStatsState> {
  TodayStatsBloc() : super(TodayStatsState.initial());

  @override
  Stream<TodayStatsState> mapEventToState(
    TodayStatsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

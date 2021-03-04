import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';

part 'stats_event.dart';

part 'stats_state.dart';

part 'stats_bloc.freezed.dart';

@injectable
class StatsBloc extends Bloc<StatsEvent, StatsState> {
  StatsBloc() : super(StatsState.initial());

  @override
  Stream<StatsState> mapEventToState(StatsEvent event) async* {
    yield* event.handle(state);
  }
}

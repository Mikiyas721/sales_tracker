import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';

part 'fetch_funds_event.dart';

part 'fetch_funds_state.dart';

part 'fetch_funds_bloc.freezed.dart';

@injectable
class FetchFundsBloc extends Bloc<FetchFundsEvent, FetchFundsState> {
  FetchFundsBloc() : super(FetchFundsState.initial());

  @override
  Stream<FetchFundsState> mapEventToState(
    FetchFundsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

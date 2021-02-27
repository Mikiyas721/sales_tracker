import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';

part 'fetch_sales_event.dart';

part 'fetch_sales_state.dart';

part 'fetch_sales_bloc.freezed.dart';

@injectable
class FetchSalesBloc extends Bloc<FetchSalesEvent, FetchSalesState> {
  FetchSalesBloc() : super(FetchSalesState.initial());

  @override
  Stream<FetchSalesState> mapEventToState(
    FetchSalesEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

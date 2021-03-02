import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';

part 'cash_transactions_event.dart';

part 'cash_transactions_state.dart';

part 'cash_transactions_bloc.freezed.dart';

@injectable
class CashTransactionsBloc extends Bloc<CashTransactionsEvent, CashTransactionsState> {
  CashTransactionsBloc() : super(CashTransactionsState.initial());

  @override
  Stream<CashTransactionsState> mapEventToState(
    CashTransactionsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

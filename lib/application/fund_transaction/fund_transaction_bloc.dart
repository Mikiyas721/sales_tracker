import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

part 'fund_transaction_event.dart';

part 'fund_transaction_state.dart';

part 'fund_transaction_bloc.freezed.dart';

@injectable
class FundTransactionBloc
    extends Bloc<FundTransactionEvent, FundTransactionState> {
  FundTransactionBloc() : super(FundTransactionState.initial());

  @override
  Stream<FundTransactionState> mapEventToState(
    FundTransactionEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

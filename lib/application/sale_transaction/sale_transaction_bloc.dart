import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/card_amount.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

part 'sale_transaction_event.dart';

part 'sale_transaction_state.dart';

part 'sale_transaction_bloc.freezed.dart';

@lazySingleton
class SaleTransactionBloc
    extends Bloc<SaleTransactionEvent, SaleTransactionState> {
  SaleTransactionBloc() : super(SaleTransactionState.initial());

  @override
  Stream<SaleTransactionState> mapEventToState(
    SaleTransactionEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

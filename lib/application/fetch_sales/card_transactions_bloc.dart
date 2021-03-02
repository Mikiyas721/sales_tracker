import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';

part 'card_transactions_event.dart';

part 'card_transactions_state.dart';

part 'card_transactions_bloc.freezed.dart';

@injectable
class CardTransactionsBloc extends Bloc<CardTransactionsEvent, CardTransactionsState> {
  CardTransactionsBloc() : super(CardTransactionsState.initial());

  @override
  Stream<CardTransactionsState> mapEventToState(
      CardTransactionsEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

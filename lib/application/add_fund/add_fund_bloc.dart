import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

part 'add_fund_event.dart';

part 'add_fund_state.dart';

part 'add_fund_bloc.freezed.dart';

@injectable
class AddFundBloc
    extends Bloc<AddFundEvent, AddFundState> {
  AddFundBloc() : super(AddFundState.initial());

  @override
  Stream<AddFundState> mapEventToState(
    AddFundEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/card_amount.dart';
import 'package:sales_tracker/domain/value_objects/cash_amount.dart';

part 'add_sale_event.dart';

part 'add_sale_state.dart';

part 'add_sale_bloc.freezed.dart';

@lazySingleton
class AddSaleBloc
    extends Bloc<AddSaleEvent, AddSaleState> {
  AddSaleBloc() : super(AddSaleState.initial());

  @override
  Stream<AddSaleState> mapEventToState(
    AddSaleEvent event,
  ) async* {
    yield* event.handle(state);
  }
}

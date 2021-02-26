import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/value_objects/address.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'new_shop_event.dart';

part 'new_shop_state.dart';

part 'new_shop_bloc.freezed.dart';

@lazySingleton
class NewShopBloc extends Bloc<NewShopEvent, NewShopState> {
  NewShopBloc() : super(NewShopState.initial()) ;

  @override
  Stream<NewShopState> mapEventToState(NewShopEvent event) async* {
    yield* event.handle(state);
  }
}

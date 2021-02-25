import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';

part 'my_shops_event.dart';

part 'my_shops_state.dart';

part 'my_shops_bloc.freezed.dart';

@injectable
class MyShopsBloc extends Bloc<MyShopsEvent, MyShopsState> {
  IShopRepo _iShopRepo;

  MyShopsBloc(this._iShopRepo) : super(MyShopsState.initial());

  @override
  Stream<MyShopsState> mapEventToState(
    MyShopsEvent event,
  ) async* {
    yield* event.map(load: (Load value) async* {
      if (value.load) {
        yield state.copyWith(isLoading: true);
        final result = await _iShopRepo.fetchAll();
        yield state.copyWith(shops: result);
      }
    });
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/bloc/bloc_helpers.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';
import 'package:sales_tracker/domain/value_objects/address.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'new_shop_event.dart';

part 'new_shop_state.dart';

part 'new_shop_bloc.freezed.dart';

@lazySingleton
class NewShopBloc extends Bloc<NewShopEvent, NewShopState> {
  IShopRepo _iShopRepo;



  NewShopBloc(this._iShopRepo) : super(NewShopState.initial());

  @override
  Stream<NewShopState> mapEventToState(NewShopEvent event) async* {
    yield* event.handle(state);
    /*yield* event.map(nameChanged: (NameChanged nameChanged) async* {
      yield Name.create(nameChanged.name);
    }, addressChanged: (AddressChanged addressChanged) async* {
      yield state.copyWith(address: Address.create(addressChanged.address));
    }, phoneNumberChanged: (PhoneNumberChanged phoneNumberChanged) async* {
      yield PhoneNumber.create(phoneNumberChanged.phoneNumber);
    }, addNewShop: (AddNewShop addNewShop) async* {
      yield state.copyWith(hasSubmitted: true);

      Option<Shop> shop = Shop.createFromInputs(
          name: state.name.fold((l) => null, (r) => r.value),
          address: state.address.fold((l) => null, (r) => r.value),
          phoneNumber: state.phoneNumber.fold((l) => null, (r) => r.value));

      shop.fold(() async* {
        yield state.copyWith(showErrorMessage: true);
      }, (a) async* {
        yield state.copyWith(isAdding: true);
        final result = await _iShopRepo.create(a);
        result.fold((l) async*{
          /// ??
        }, (r) async* {
          yield state.copyWith(hasAdded: true);
        });
      });
    });*/
  }
}

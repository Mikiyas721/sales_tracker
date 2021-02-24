import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/ports/shop_repo.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/domain/value_objects/phone_number.dart';

part 'new_shop_event.dart';

part 'new_shop_state.dart';

part 'new_shop_bloc.freezed.dart';

@injectable
class NewShopBloc extends Bloc<NewShopEvent, NewShopState> {
  IShopRepo _iShopRepo;

  NewShopBloc(this._iShopRepo) : super(NewShopState.initial());

  @override
  Stream<NewShopState> mapEventToState(NewShopEvent event) async* {
    yield* event.map(
        nameChanged: (NameChanged nameChanged) async* {
          Name.create(nameChanged.name).fold((l) async* {
            yield state.copyWith(showNameError: true);
          }, (r) async* {
            yield state.copyWith(name: r);
          });
        },
        addressChanged: (AddressChanged addressChanged) async* {
          yield state.copyWith(address: addressChanged.address);
        },
        phoneNumberChanged: (PhoneNumberChanged phoneNumberChanged) async* {
          PhoneNumber.create(phoneNumberChanged.phoneNumber).fold((l) async* {
            yield state.copyWith(showPhoneNumberError: true);
          }, (r) async* {
            yield state.copyWith(
                phoneNumber: r);
          });
        },
        addNewShop: (AddNewShop addNewShop) async* {
          Shop.createFromInputs(name: state.name.value,
              address: state.address,
              phoneNumber: state.phoneNumber.value).fold(() async* {
                yield state.copyWith(); /// ??
          }, (
              a) async* {
                yield state.copyWith(isAdding: true);
            Either<Failure, Shop> result  = await _iShopRepo.create(a);
            result.fold((l) async* {
              yield state.copyWith(); /// ??
            }, (r) async* {
              yield state.copyWith(hasAdded:true);
            });

          });
        });
  }
}

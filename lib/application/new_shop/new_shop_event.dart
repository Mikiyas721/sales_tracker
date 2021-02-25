part of 'new_shop_bloc.dart';

/*@immutable
@freezed
abstract class NewShopEvent with _$NewShopEvent {
  const factory NewShopEvent.nameChanged(String name) = NameChanged;
  const factory NewShopEvent.addressChanged(String address) = AddressChanged;
  const factory NewShopEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory NewShopEvent.addNewShop() = AddNewShop;
}*/

abstract class NewShopEvent extends BlocEvent<NewShopState> {}

class NewShopNameChangedEvent implements NewShopEvent {
  final String name;

  const NewShopNameChangedEvent(this.name);

  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      name: Name.create(name),
    );
  }
}
class NewShopAddRequestedEvent implements NewShopEvent {
  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      showErrorMessage: true,
    );
  }
}

class NewShopAddStartedEvent implements NewShopEvent {
  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      isAdding: true,
    );
  }
}

class NewShopAddSucceededEvent implements NewShopEvent {
  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      isAdding: false,
      hasAdded: true,
      name:
    );
  }
}

class NewShopAddFailedEvent implements NewShopEvent {
  final Failure addShopFailure;

  NewShopAddFailedEvent(this.addShopFailure);

  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      isAdding: false,
      addShopFailure: this.addShopFailure,
    );
  }
}

part of 'new_shop_bloc.dart';

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

class NewShopAddressChangedEvent implements NewShopEvent {
  final String address;

  const NewShopAddressChangedEvent(this.address);

  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(address: Address.create(address));
  }
}

class NewShopPhoneNumberChangedEvent implements NewShopEvent {
  final String phoneNumber;

  const NewShopPhoneNumberChangedEvent(this.phoneNumber);

  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(phoneNumber: PhoneNumber.create(phoneNumber));
  }
}

class NewShopAddSubmittedEvent implements NewShopEvent {
  @override
  Stream<NewShopState> handle(NewShopState currentState) async* {
    yield currentState.copyWith(
      hasSubmitted: true,
    );
  }
}

class NewShopAddRequestedEvent implements NewShopEvent {
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
      name: null,
      address: null,
      phoneNumber: null,
      addShopFailure: null,
      hasSubmitted: false,
      isAdding: false,
      hasAdded: true,
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

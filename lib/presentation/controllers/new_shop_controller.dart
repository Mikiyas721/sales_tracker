import 'package:flutter/material.dart';
import 'package:sales_tracker/application/new_shop/new_shop_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/controller/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/shop.dart';
import 'package:sales_tracker/domain/use_cases/add_shop.dart';
import 'package:sales_tracker/domain/value_objects/name.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/new_shop_model.dart';

class NewShopController
    extends BlocViewModelController<NewShopBloc, NewShopEvent, NewShopState, NewShopViewModel>
    with ToastMixin {
  final BuildContext context;
  TextEditingController phoneTextFieldController;

  NewShopController(this.context) : super(getIt.get<NewShopBloc>(), false) {
    phoneTextFieldController = TextEditingController(text: this.viewModelStream.value.name);
  }


  //presenter
  @override
  NewShopViewModel mapStateToViewModel(NewShopState s) {
    return NewShopViewModel(
      name: s.name.fold((l) => null, (r) => r.value),
      nameError: s.hasSubmitted ? (s.name.fold((l) => l.message, (r) => null)) : null,
      address: s.address.fold((l) => null, (r) => r.value),
      addressError: s.hasSubmitted ? s.address.fold((l) => l.message, (r) => null) : null,
      phoneNumber: s.phoneNumber.fold((l) => null, (r) => r.value),
      phoneNumberError: s.hasSubmitted ? s.phoneNumber.fold((l) => l.message, (r) => null) : null,
      isAdding: s.isAdding,
    );
  }

  //actions
  onNameChanged(String name) {
    final nameObj = Name.create(name);
    this.bloc.add(NewShopNameChangedEvent(name));
  }

  onAddShop() {
    this.bloc.add(NewShopAddRequestedEvent());
    final shop = Shop.createFromInputs(
      name: this.bloc.state.name.getOrElse(() => null),
      address: this.bloc.state.address.getOrElse(() => null),
      phoneNumber: this.bloc.state.phoneNumber.getOrElse(() => null),
    );
    shop.fold(
      () {},
      (s) async {
        final result = await getIt.get<AddShop>().execute(s);
        result.fold(
          (l) {
            bloc.add(NewShopAddFailedEvent(l));
            toastError(l.message);
          },
          (r) {
            bloc.add(NewShopAddSucceededEvent());
            phoneTextFieldController.text = "";
            toastSuccess("Shop Added Successfully!");
          },
        );
      },
    );
  }
}

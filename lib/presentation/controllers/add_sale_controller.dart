import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/application/add_sale/add_sale_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/entities/user.dart';
import 'package:sales_tracker/domain/use_cases/add_sale_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sale_view_model.dart';
import '../../application/splash/splash_bloc.dart';
import '../../common/common.dart';

class AddSaleController extends BlocViewModelController<AddSaleBloc,
    AddSaleEvent, AddSaleState, SaleViewModel> with ToastMixin {
  final BuildContext context;
  final String shopId;
  TextEditingController totalAmountTextFieldController;
  TextEditingController paidAmountTextFieldController;

  AddSaleController(this.context, this.shopId)
      : super(getIt.get<AddSaleBloc>(), true) {
    totalAmountTextFieldController = TextEditingController();
    paidAmountTextFieldController = TextEditingController();
  }

  @override
  SaleViewModel mapStateToViewModel(AddSaleState s) {
    return SaleViewModel(
      totalAmount: s.totalAmount?.fold((l) => null, (r) => r)?.value.toString(),
      totalAmountError: s.hasSubmitted
          ? (s.totalAmount.fold((l) => l.message, (r) => null))
          : null,
      paidAmount: s.paidAmount?.fold((l) => null, (r) => r)?.value.toString(),
      paidAmountError: s.hasSubmitted
          ? (s.paidAmount.fold((l) => l.message, (r) => null))
          : null,
      isRegistering: s.hasRequested,
    );
  }

  void onTotalAmount(String totalAmount) {
    bloc.add(AddSaleTotalAmountChangedEvent(totalAmount));
  }

  void onPaidAmount(String paidAmount) {
    bloc.add(AddSalePaidAmountChangedEvent(paidAmount));
  }

  void onRegister() {
    bloc.add(AddSaleSubmittedEvent());
    final userResult = getIt.get<SplashBloc>().state.user;
    userResult.fold(() {
      bloc.add(AddSaleFailedEvent(SimpleFailure('sellingPage.undefinedSalesperson'.tr)));
      toastError('sellingPage.undefinedSalesperson'.tr);
    }, (user) {
      _ifUser(user);
    });
  }

  void _ifUser(User user) {
    bloc.add(AddSaleRequestedEvent());
    final cardTransaction = CardTransaction.createFromInputs(
      salesPersonId: user.id,
      shopId: shopId,
      amount: bloc.state.totalAmount.getOrElse(() => null),
    );
    cardTransaction.fold(() {
      _throwInvalidInputs();
    }, (cardTransaction) async {
      _ifCardTransaction(user, cardTransaction);
    });
  }

  void _ifCardTransaction(User user, CardTransaction cardTransaction) {
    final cashTransaction = CashTransaction.createFromInputs(
        salesPersonId: user.id,
        shopId: shopId,
        amount: bloc.state.paidAmount.getOrElse(() => null));
    cashTransaction.fold(() {
      _throwInvalidInputs();
    }, (cashTransaction) async {
      _ifCashTransaction(user, cardTransaction, cashTransaction);
    });
  }

  void _ifCashTransaction(User user, CardTransaction cardTransaction,
      CashTransaction cashTransaction) async {
    final salesTransactionResult = await getIt
        .get<AddSaleTransaction>()
        .execute(cardTransaction, cashTransaction);
    salesTransactionResult.fold((l) {
      bloc.add(AddSaleFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(AddSaleSucceededEvent());
      _clearTextFields();
      toastSuccess('sellingPage.successfulMessage'.tr);
    });
  }

  void _clearTextFields() {
    totalAmountTextFieldController.text = "";
    paidAmountTextFieldController.text = "";
  }

  void _throwInvalidInputs() {
    AddSaleFailedEvent(SimpleFailure('sellingPage.invalidInput'.tr));
    toastError('sellingPage.invalidInput'.tr);
  }
}

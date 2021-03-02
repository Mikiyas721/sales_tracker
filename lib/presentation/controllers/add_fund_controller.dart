import 'package:flutter/material.dart';
import 'package:sales_tracker/application/add_fund/add_fund_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_cash_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/fund_view_model.dart';

class AddFundController extends BlocViewModelController<
    AddFundBloc,
    AddFundEvent,
    AddFundState,
    FundViewModel> with ToastMixin {
  final BuildContext context;
  TextEditingController paidAmountTextFieldController;

  AddFundController(this.context)
      : super(getIt.get<AddFundBloc>(), true) {
    paidAmountTextFieldController = TextEditingController();
  }

  @override
  FundViewModel mapStateToViewModel(AddFundState s) {
    return FundViewModel(
        amount: s.paidAmount.getOrElse(() => null)?.value.toString(),
        amountError: s.hasSubmitted
            ? s.paidAmount.fold((l) => l.message, (r) => null)
            : null,
        isFunding: s.hasRequested);
  }
  void onPaidAmount(String paidAmount) {
    bloc.add(AddFundPaidAmountChangedEvent(paidAmount));
  }

  void onRegister() {
    bloc.add(AddFundSubmittedEvent());
    final saleTransaction = CashTransaction.createFromInputs(
      salesPersonId: null, // TODO ??
      shopId: null,
      amount: bloc.state.paidAmount.getOrElse(() => null),
    );
    saleTransaction.fold(() {
      toastError('Invalid Inputs');
    }, (a) async* {
      final result = await getIt.get<AddCashTransaction>().execute(a);
      result.fold((l) {
        bloc.add(AddFundFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(AddFundSucceededEvent());
        paidAmountTextFieldController.text = "";
        toastSuccess('Transaction Added Successfully');
      });
    });
  }
}

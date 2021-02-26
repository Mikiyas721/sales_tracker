import 'package:flutter/material.dart';
import 'package:sales_tracker/application/fund_transaction/fund_transaction_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/controller/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/fund_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_fund_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/fund_view_model.dart';

class FundTransactionController extends BlocViewModelController<
    FundTransactionBloc,
    FundTransactionEvent,
    FundTransactionState,
    FundViewModel> with ToastMixin {
  final BuildContext context;
  TextEditingController paidAmountTextFieldController;

  FundTransactionController(this.context)
      : super(getIt.get<FundTransactionBloc>(), true) {
    paidAmountTextFieldController = TextEditingController();
  }

  @override
  FundViewModel mapStateToViewModel(FundTransactionState s) {
    return FundViewModel(
        amount: s.paidAmount.getOrElse(() => null)?.value.toString(),
        amountError: s.hasSubmitted
            ? s.paidAmount.fold((l) => l.message, (r) => null)
            : null,
        isFunding: s.hasRequested);
  }
  void onPaidAmount(String paidAmount) {
    bloc.add(FundTransactionPaidAmountChangedEvent(paidAmount));
  }

  void onRegister() {
    bloc.add(FundTransactionSubmittedEvent());
    final saleTransaction = FundTransaction.createFromInputs(
      salesPersonId: null, // TODO ??
      shopId: null,
      cashAmount: bloc.state.paidAmount.getOrElse(() => null),
    );
    saleTransaction.fold(() {
      toastError('Invalid Inputs');
    }, (a) async* {
      final result = await getIt.get<AddFundTransaction>().execute(a);
      result.fold((l) {
        bloc.add(FundTransactionFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(FundTransactionSucceededEvent());
        paidAmountTextFieldController.text = "";
        /// not used anywhere?
        toastSuccess('Transaction Added Successfully');
      });
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/sale_transaction/sale_transaction_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/controller/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_sale_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sale_view_model.dart';

class SaleTransactionController extends BlocViewModelController<
    SaleTransactionBloc,
    SaleTransactionEvent,
    SaleTransactionState,
    SaleViewModel> with ToastMixin {
  final BuildContext context;
  TextEditingController totalAmountTextFieldController;
  TextEditingController paidAmountTextFieldController;

  SaleTransactionController(this.context)
      : super(getIt.get<SaleTransactionBloc>(), true) {
    totalAmountTextFieldController = TextEditingController();
    paidAmountTextFieldController = TextEditingController();
  }

  @override
  SaleViewModel mapStateToViewModel(SaleTransactionState s) {
    return SaleViewModel(
      totalAmount: s.totalAmount.fold((l) => null, (r) => r)?.value.toString(),
      totalAmountError: s.hasSubmitted
          ? (s.totalAmount.fold((l) => l.message, (r) => null))
          : null,
      paidAmount: s.paidAmount.fold((l) => null, (r) => r)?.value.toString(),
      paidAmountError: s.hasSubmitted
          ? (s.paidAmount.fold((l) => l.message, (r) => null))
          : null,
      isRegistering: s.hasRequested,
    );
  }

  void onTotalAmount(String totalAmount) {
    bloc.add(SaleTransactionTotalAmountChangedEvent(totalAmount));
  }

  void onPaidAmount(String paidAmount) {
    bloc.add(SaleTransactionPaidAmountChangedEvent(paidAmount));
  }

  void onRegister() {
    bloc.add(SaleTransactionSubmittedEvent());
    final saleTransaction = SaleTransaction.createFromInputs(
      salesPersonId: null, // TODO ??
      shopId: null,
      cardAmount: bloc.state.totalAmount.getOrElse(() => null),
      cashAmount: bloc.state.paidAmount.getOrElse(() => null),
    );
    saleTransaction.fold(() {
      toastError('Invalid Inputs');
    }, (a) async* {
      final result = await getIt.get<AddSaleTransaction>().execute(a);
      result.fold((l) {
        bloc.add(SaleTransactionFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(SaleTransactionSucceededEvent());
        totalAmountTextFieldController.text = "";
        paidAmountTextFieldController.text = "";
        /// not used anywhere?
        toastSuccess('Transaction Added Successfully');
      });
    });
  }
}

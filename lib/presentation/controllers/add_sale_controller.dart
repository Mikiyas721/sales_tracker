import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/add_sale/add_sale_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/sell_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_sale_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sale_view_model.dart';

class AddSaleController extends BlocViewModelController<
    AddSaleBloc,
    AddSaleEvent,
    AddSaleState,
    SaleViewModel> with ToastMixin {
  final BuildContext context;
  TextEditingController totalAmountTextFieldController;
  TextEditingController paidAmountTextFieldController;

  AddSaleController(this.context)
      : super(getIt.get<AddSaleBloc>(), true) {
    totalAmountTextFieldController = TextEditingController();
    paidAmountTextFieldController = TextEditingController();
  }

  @override
  SaleViewModel mapStateToViewModel(AddSaleState s) {
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
    bloc.add(AddSaleTotalAmountChangedEvent(totalAmount));
  }

  void onPaidAmount(String paidAmount) {
    bloc.add(AddSalePaidAmountChangedEvent(paidAmount));
  }

  void onRegister() {
    bloc.add(AddSaleSubmittedEvent());
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
        bloc.add(AddSaleFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(AddSaleSucceededEvent());
        totalAmountTextFieldController.text = "";
        paidAmountTextFieldController.text = "";
        /// not used anywhere?
        toastSuccess('Transaction Added Successfully');
      });
    });
  }
}

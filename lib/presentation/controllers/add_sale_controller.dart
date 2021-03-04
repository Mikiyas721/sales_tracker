import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/add_fund/add_fund_bloc.dart';
import 'package:sales_tracker/application/add_sale/add_sale_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_card_transaction.dart';
import 'package:sales_tracker/domain/use_cases/add_cash_transaction.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sale_view_model.dart';
import '../../application/splash/splash_bloc.dart';

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
    final user = getIt.get<SplashBloc>().state.user;
    user.fold(() {
      bloc.add(AddSaleFailedEvent(SimpleFailure('Undefined Salesperson')));
      toastError("Undefined Salesperson");
    }, (a) {
      bloc.add(AddSaleRequestedEvent());
      final cardTransaction = CardTransaction.createFromInputs(
        salesPersonId: a.id,
        shopId: shopId,
        amount: bloc.state.totalAmount.getOrElse(() => null),
      );
      final cashTransaction = CashTransaction.createFromInputs(
          salesPersonId: a.id,
          shopId: shopId,
          amount: bloc.state.paidAmount.getOrElse(() => null));

      cardTransaction.fold(() {
        bloc.add(AddSaleFailedEvent(SimpleFailure('Invalid Card')));
        toastError('Invalid Card');
      }, (a) async {
        final cardResult = await getIt.get<AddCardTransaction>().execute(a);
        cardResult.fold((l) {
          bloc.add(AddSaleFailedEvent(l));
          toastError(l.message);
        }, (r) {
          cashTransaction.fold(() {
            bloc.add(
                AddSaleFailedEvent(SimpleFailure('Invalid Selling Inputs')));
            toastError('Invalid Selling Inputs');
          }, (a) async* {
            final cardResult = await getIt.get<AddCashTransaction>().execute(a);
            cardResult.fold((l) {
              bloc.add(AddSaleFailedEvent(l));
              toastError(l.message);
            }, (r) {
              bloc.add(AddSaleSucceededEvent());
              toastSuccess('Transaction Added Successfully');
            });
          });
          bloc.add(AddSaleSucceededEvent());
          totalAmountTextFieldController.text = "";
          paidAmountTextFieldController.text = "";
        });
      });
    });
  }
}

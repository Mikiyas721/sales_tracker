import 'package:flutter/material.dart';
import 'package:sales_tracker/application/fetch_funds/cash_transactions_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/date_time_mixin.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_cash_transactions.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/cash_transactions_view_model.dart';

class CashTransactionsController extends BlocViewModelController<
    CashTransactionsBloc,
    CashTransactionsEvent,
    CashTransactionsState,
    CashTransactionsViewModel> with ToastMixin,DateTimeMixin {
  final BuildContext context;

  CashTransactionsController(this.context)
      : super(getIt.get<CashTransactionsBloc>(), true);

  @override
  CashTransactionsViewModel mapStateToViewModel(CashTransactionsState s) {
    return CashTransactionsViewModel(
        list: s.funds
            .map((e) =>
                CashTransactionViewModel(
                    amount: e.amount.value.toString(),
                    time: getTimeString(e.createdAt),
                    date: getShortDateString(e.createdAt)))
            .toList(),
        isLoading: s.isLoading,
        loadingError: s.fetchingFundsFailure != null
            ? s.fetchingFundsFailure.message
            : null);
  }

  void loadShops() async {
    bloc.add(CashTransactionsLoadingEvent());
    final fetchShopsResult = await getIt.get<FetchCashTransactions>().execute();
    fetchShopsResult.fold((l) {
      bloc.add(CashTransactionsLoadingFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(CashTransactionsLoadingSucceededEvent(r));
    });
  }
}

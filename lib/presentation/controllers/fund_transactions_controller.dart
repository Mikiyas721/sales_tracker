import 'package:flutter/material.dart';
import 'package:sales_tracker/application/fetch_funds/fetch_funds_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/controller/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_fund_transactions.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/fund_transaction_view_model.dart';

class FundTransactionController extends BlocViewModelController<
    FetchFundsBloc,
    FetchFundsEvent,
    FetchFundsState,
    FundTransactionsViewModel> with ToastMixin {
  final BuildContext context;

  FundTransactionController(this.context)
      : super(getIt.get<FetchFundsBloc>(), true);

  @override
  FundTransactionsViewModel mapStateToViewModel(FetchFundsState s) {
    return FundTransactionsViewModel(
        list: s.funds
            .map((e) => //TODO use a datetime mixin
                FundTransactionViewModel(
                    amount: e.amount.value.toString(),
                    time: e.createdAt.toString(),
                    date: e.createdAt.toString()))
            .toList(),
        hasLoaded: s.hasLoaded,
        isLoading: s.isLoading,
        loadingError: s.fetchingFundsFailure != null
            ? s.fetchingFundsFailure.message
            : null);
  }

  void loadShops() async {
    bloc.add(FetchingFundsEvent());
    final fetchShopsResult = await getIt.get<FetchFundTransactions>().execute();
    fetchShopsResult.fold((l) {
      bloc.add(FetchingFundsFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(FetchingFundsSucceededEvent(r));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:sales_tracker/application/fetch_funds/cash_transactions_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/date_time_mixin.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_cash_transactions.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/cash_transactions_view_model.dart';
import '../../application/splash/splash_bloc.dart';

class CashTransactionsController extends BlocViewModelController<
    CashTransactionsBloc,
    CashTransactionsEvent,
    CashTransactionsState,
    CashTransactionsViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;
  final String shopId;

  CashTransactionsController(this.context, this.shopId)
      : super(getIt.get<CashTransactionsBloc>(), true);

  @override
  CashTransactionsViewModel mapStateToViewModel(CashTransactionsState s) {
    return CashTransactionsViewModel(
        list: s.funds
            ?.map<CashTransactionViewModel>((e) => CashTransactionViewModel(
                  amount: e.amount.value.toString(),
                  date: getShortDateString(e.createdAt),
                  time: mapTimeToMeridian(e.createdAt),
                ))
            ?.toList(),
        isLoading: s.isLoading,
        loadingError: s.fetchingFundsFailure?.getOrElse(() => null)?.message);
  }

  void loadCashTransactions() async {
    bloc.add(CashTransactionsLoadingEvent());
    final user = getIt.get<SplashBloc>().state.user;
    user.fold(() {
      bloc.add(CashTransactionsLoadingFailedEvent(
          SimpleFailure('Undefined Salesperson')));
      toastError('Undefined Salesperson');
    }, (salesperson) async {
      final fetchShopsResult = await getIt
          .get<FetchCashTransactions>()
          .execute(salesperson.id, shopId);
      fetchShopsResult.fold((l) {
        bloc.add(CashTransactionsLoadingFailedEvent(l));
        toastError(l.message);
      }, (r) {
        bloc.add(CashTransactionsLoadingSucceededEvent(r));
      });
    });
  }
}

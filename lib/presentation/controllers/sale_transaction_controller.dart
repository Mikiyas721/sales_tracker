import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/fetch_sales/fetch_sales_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/date_time_mixin.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_sale_transactions.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sale_transaction_view_model.dart';

class SaleTransactionController extends BlocViewModelController<
    FetchSalesBloc,
    FetchSalesEvent,
    FetchSalesState,
    SaleTransactionsViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;

  SaleTransactionController(this.context)
      : super(getIt.get<FetchSalesBloc>(), true);

  @override
  SaleTransactionsViewModel mapStateToViewModel(FetchSalesState s) {
    return SaleTransactionsViewModel(
        list: s.sales
            .map((e) =>
                SaleTransactionViewModel(
                    soldAmount: e.soldAmount.value.toString(),
                    receivedAmount: e.receivedAmount.value.toString(),
                    date: getDateString(e.createdAt),
                    time: getTimeString(e.createdAt)))
            .toList(),
        isLoading: s.isLoading,
        loadingError: s.fetchingSalesFailure != null
            ? s.fetchingSalesFailure.message
            : null);
  }

  void loadShops() async {
    bloc.add(FetchingSalesEvent());
    final fetchShopsResult = await getIt.get<FetchSaleTransactions>().execute();
    fetchShopsResult.fold((l) {
      bloc.add(FetchingSalesFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(FetchingSalesSucceededEvent(r));
    });
  }
}

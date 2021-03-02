import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/fetch_sales/card_transactions_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/mixins/date_time_mixin.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/use_cases/fetch_card_transactions.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/card_transactions_view_model.dart';

class CardTransactionsController extends BlocViewModelController<
    CardTransactionsBloc,
    CardTransactionsEvent,
    CardTransactionsState,
    CardTransactionsViewModel> with ToastMixin, DateTimeMixin {
  final BuildContext context;

  CardTransactionsController(this.context)
      : super(getIt.get<CardTransactionsBloc>(), true);

  @override
  CardTransactionsViewModel mapStateToViewModel(CardTransactionsState s) {
    return CardTransactionsViewModel(
        list: s.sales
            .map((e) =>
                CardTransactionViewModel(
                    amount: e.amount.value.toString(),
                    date: getDateString(e.createdAt),
                    time: getTimeString(e.createdAt)))
            .toList(),
        isLoading: s.isLoading,
        loadingError: s.fetchingSalesFailure != null
            ? s.fetchingSalesFailure.message
            : null);
  }

  void loadShops() async {
    bloc.add(CardTransactionsLoadingEvent());
    final fetchShopsResult = await getIt.get<FetchCardTransactions>().execute();
    fetchShopsResult.fold((l) {
      bloc.add(CardTransactionsLoadingFailedEvent(l));
      toastError(l.message);
    }, (r) {
      bloc.add(CardTransactionsLoadingSucceededEvent(r));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:sales_tracker/application/stats/stats_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/common/mixins/date_time_mixin.dart';
import 'package:sales_tracker/common/mixins/toast_mixin.dart';
import 'package:sales_tracker/domain/entities/card_transaction.dart';
import 'package:sales_tracker/domain/entities/cash_transaction.dart';
import 'package:sales_tracker/domain/use_cases/fetch_this_month_stats.dart';
import 'package:sales_tracker/domain/use_cases/fetch_this_week_stats.dart';
import 'package:sales_tracker/domain/use_cases/fetch_today_stats.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/sales_status_view_model.dart';
import '../../application/splash/splash_bloc.dart';
import '../../common/common.dart';

class StatsController extends BlocViewModelController<StatsBloc, StatsEvent,
    StatsState, SalesStatusViewModel> with DateTimeMixin, ToastMixin {
  BuildContext context;

  StatsController(this.context) : super(getIt.get<StatsBloc>(), false);

  @override
  SalesStatusViewModel mapStateToViewModel(StatsState s) {
    return SalesStatusViewModel(
        isLoading: s.isLoading,
        loadingFailure: s.loadingFailure,
        activeButtonIndex: s.activeButtonIndex,
        soldAmount: _getSoldAmount(s.cards).toString(),
        loanedAmount:
            (_getSoldAmount(s.cards) - _getFundedAmount(s.cash)).toString(),
        fundedAmount: _getFundedAmount(s.cash).toString(),
        bars: _getBars(s.activeButtonIndex, s.cards, s.cash));
  }

  int _getSoldAmount(List<CardTransaction> cards) {
    int total = 0;
    cards?.forEach((element) {
      total += element.amount.value;
    });
    return total;
  }

  double _getFundedAmount(List<CashTransaction> cash) {
    double total = 0;
    cash?.forEach((element) {
      total += element.amount.value;
    });
    return total;
  }

  List<BarData> _getBars(int activeButtonIndex, List<CardTransaction> cards,
      List<CashTransaction> cash) {
    if (cards.isEmpty && cash.isEmpty) return [];
    if (activeButtonIndex == 0)
      return _getTodayBars(cards, cash);
    else if (activeButtonIndex == 1)
      return _getThisWeekBars(cards, cash);
    else
      return _getThisMonthBars(cards, cash);
  }

  List<BarData> _getTodayBars(
      List<CardTransaction> cards, List<CashTransaction> cash) {
    List<BarData> barData = [];
    for (int i = 9; i < 18; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.hour == i - 1) barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.hour == i - 1)
          stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: mapHourToMeridianHour(i).toString(),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }

  List<BarData> _getThisWeekBars(
      List<CardTransaction> cards, List<CashTransaction> cash) {
    List<BarData> barData = [];
    for (int i = 1; i < 8; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.weekday == i) barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.weekday == i) stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: getDayOfWeekLabel(i),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }

  List<BarData> _getThisMonthBars(
      List<CardTransaction> cards, List<CashTransaction> cash) {
    List<BarData> barData = [];
    for (int i = 0; i < 4; i++) {
      double barHeight = 0;
      double stackHeight = 0;
      cards?.forEach((element) {
        if (element.createdAt.day >= (i * 7) + 1 &&
            element.createdAt.day <= (i + 1) * 7)
          barHeight += element.amount.value;
      });
      cash?.forEach((element) {
        if (element.createdAt.day >= (i * 7) + 1 &&
            element.createdAt.day <= (i + 1) * 7)
          stackHeight += element.amount.value;
      });
      barData.add(BarData(
          value: i,
          label: (i + 1).toString(),
          barHeight: barHeight,
          stackHeight: stackHeight));
    }
    return barData;
  }

  void onToday(bool isActive)async{
    if (isActive) {
      bloc.add(ActiveButtonIndexChangedStatsEvent(0));
      bloc.add(LoadingListsStatsEvent());
      final user = getIt.get<SplashBloc>().state.user;
      user.fold(() {
        bloc.add(LoadingStatsFailedStatsEvent(
            SimpleFailure('homePage.undefinedSalesperson'.tr)));
        toastError('homePage.undefinedSalesperson'.tr);
      }, (salesperson) async {
        final cardResult =
            await getIt.get<FetchTodayCard>().execute(salesperson.id);
        cardResult.fold((l) {
          bloc.add(LoadingStatsFailedStatsEvent(l));
          toastError(l.message);
        }, (cards) async {
          final cashResult =
              await getIt.get<FetchTodayCash>().execute(salesperson.id);
          cashResult.fold((l) {
            bloc.add(LoadingStatsFailedStatsEvent(l));
            toastError(l.message);
          }, (cash) {
            bloc.add(LoadingStatsSucceededStatsEvent(cards, cash));
          });
        });
      });
    }
  }

  void onThisWeek(bool isActive) {
    if (isActive) {
      bloc.add(ActiveButtonIndexChangedStatsEvent(1));
      bloc.add(LoadingListsStatsEvent());
      final user = getIt.get<SplashBloc>().state.user;
      user.fold(() {
        bloc.add(LoadingStatsFailedStatsEvent(
            SimpleFailure('homePage.undefinedSalesperson'.tr)));
        toastError('homePage.undefinedSalesperson'.tr);
      }, (salesperson) async {
        final cardResult =
            await getIt.get<FetchThisWeekCard>().execute(salesperson.id);
        cardResult.fold((l) {
          bloc.add(LoadingStatsFailedStatsEvent(l));
          toastError(l.message);
        }, (cards) async {
          final cashResult =
              await getIt.get<FetchThisWeekCash>().execute(salesperson.id);
          cashResult.fold((l) {
            bloc.add(LoadingStatsFailedStatsEvent(l));
            toastError(l.message);
          }, (cash) {
            bloc.add(LoadingStatsSucceededStatsEvent(cards, cash));
          });
        });
      });
    }
  }

  void onThisMonth(bool isActive) {
    if (isActive) {
      bloc.add(ActiveButtonIndexChangedStatsEvent(2));
      bloc.add(LoadingListsStatsEvent());
      final user = getIt.get<SplashBloc>().state.user;
      user.fold(() {
        bloc.add(LoadingStatsFailedStatsEvent(
            SimpleFailure('homePage.undefinedSalesperson'.tr)));
        toastError('homePage.undefinedSalesperson'.tr);
      }, (salesperson) async {
        final cardResult =
            await getIt.get<FetchThisMonthCard>().execute(salesperson.id);
        cardResult.fold((l) {
          bloc.add(LoadingStatsFailedStatsEvent(l));
          toastError(l.message);
        }, (cards) async {
          final cashResult =
              await getIt.get<FetchThisMonthCash>().execute(salesperson.id);
          cashResult.fold((l) {
            bloc.add(LoadingStatsFailedStatsEvent(l));
            toastError(l.message);
          }, (cash) {
            bloc.add(LoadingStatsSucceededStatsEvent(cards, cash));
          });
        });
      });
    }
  }

  void onReload() {
    if (bloc.state.activeButtonIndex == 0)
      onToday(true);
    else if (bloc.state.activeButtonIndex == 1)
      onThisWeek(true);
    else if (bloc.state.activeButtonIndex == 2) onThisMonth(true);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:sales_tracker/application/today_stats/today_stats_bloc.dart';
import 'package:sales_tracker/common/controller/controller.dart';
import 'package:sales_tracker/injection.dart';
import 'package:sales_tracker/presentation/models/home_view_model.dart';

class TodayStatsController extends BlocViewModelController<TodayStatsBloc,
    TodayStatsEvent, TodayStatsState, HomeViewModel> {
  BuildContext context;

  TodayStatsController(this.context)
      : super(getIt.get<TodayStatsBloc>(), false);

  @override
  HomeViewModel mapStateToViewModel(TodayStatsState s) {
    return HomeViewModel(
        soldToday: s.soldAmount.toString(),
        remainingLoan: s.remainingLoan.toString());
  }
  //TODO add use case and add a load method
}

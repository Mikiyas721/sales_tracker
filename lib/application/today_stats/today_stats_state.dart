part of 'today_stats_bloc.dart';

@freezed
abstract class TodayStatsState extends BlocState with _$TodayStatsState {
  const factory TodayStatsState({
    double soldAmount,
    double remainingLoan,
  }) = _TodayStatsState;
  factory TodayStatsState.initial()=>TodayStatsState(soldAmount: 0,remainingLoan: 0);
}

part of 'stats_bloc.dart';

@freezed
abstract class StatsState extends BlocState with _$StatsState {
  const factory StatsState({
    List<CardTransaction> cards,
    List<CashTransaction> cash,
    Failure loadingFailure,
    int activeButtonIndex,
    bool isLoading,
  }) = _StatsState;

  factory StatsState.initial() => StatsState(
      cards: [],
      cash: [],
      loadingFailure: null,
      activeButtonIndex: 0,
      isLoading: false);
}

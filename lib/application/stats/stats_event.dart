part of 'stats_bloc.dart';

abstract class StatsEvent extends BlocEvent<StatsState> {}

class LoadingListsStatsEvent extends StatsEvent {
  @override
  Stream<StatsState> handle(StatsState currentState) async* {
    yield currentState.copyWith(isLoading: true);
  }
}

class ActiveButtonIndexChangedStatsEvent extends StatsEvent {
  final int index;

  ActiveButtonIndexChangedStatsEvent(this.index);

  @override
  Stream<StatsState> handle(StatsState currentState) async* {
    yield currentState.copyWith(activeButtonIndex: index);
  }
}

class LoadingStatsSucceededStatsEvent extends StatsEvent {
  final List<CardTransaction> cards;
  final List<CashTransaction> cash;

  LoadingStatsSucceededStatsEvent(this.cards, this.cash);

  @override
  Stream<StatsState> handle(StatsState currentState) async* {
    yield currentState.copyWith(cards: cards, cash: cash, isLoading: false);
  }
}

class LoadingStatsFailedStatsEvent extends StatsEvent {
  final Failure cardsFailure;

  LoadingStatsFailedStatsEvent(this.cardsFailure);

  @override
  Stream<StatsState> handle(StatsState currentState) async* {
    yield currentState.copyWith(loadingFailure: cardsFailure, isLoading: false);
  }
}

part of 'fetch_funds_bloc.dart';

@freezed
abstract class FetchFundsState extends BlocState with _$FetchFundsState {
  const factory FetchFundsState({
    bool isLoading,
    bool hasLoaded,
    Failure fetchingFundsFailure,
    List<FundTransaction> funds,
  }) = _FetchFundsState;

  factory FetchFundsState.initial() => FetchFundsState(
        funds: null,
        fetchingFundsFailure: null,
        isLoading: false,
        hasLoaded: false,
      );
}

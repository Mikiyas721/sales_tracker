part of 'add_fund_bloc.dart';

@immutable
@freezed
abstract class AddFundState extends BlocState with _$AddFundState{
  const factory AddFundState({
    Either<CashAmountFailure, CashAmount> paidAmount,
    Failure fundTransactionFailure,
    bool hasSubmitted,
    bool hasRequested,
    bool requestCompleted,
}) = _AddFundState;

  factory AddFundState.initial() => AddFundState(
    paidAmount: CashAmount.createFromNum(0),
    fundTransactionFailure: null,
    hasRequested: false,
    hasSubmitted: false,
    requestCompleted: false,
  );
}

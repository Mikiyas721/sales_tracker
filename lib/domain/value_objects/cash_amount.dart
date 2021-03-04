import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';

abstract class CashAmountFailure implements Failure {}

class EmptyCashAmountFailure implements CashAmountFailure {
  @override
  String get message => "Amount is required";
}

class InvalidCashAmountFailure implements CashAmountFailure {
  @override
  String get message => "Invalid Amount";
}

class NonPositiveCashAmountFailure implements CashAmountFailure {
  @override
  String get message => "Amount too low";
}

class CashAmount {
  final double value;

  CashAmount._(this.value);

  static Either<CashAmountFailure, CashAmount> createFromStringForFund(String value) {
    if(value==null||value.isEmpty) return left(EmptyCashAmountFailure());
    double cash = double.tryParse(value);
    if(cash==null) return left(InvalidCashAmountFailure());
    if(cash<=0) return left(NonPositiveCashAmountFailure());
    return right(CashAmount._(cash));
  }
  static Either<CashAmountFailure, CashAmount> createFromNumForFund(num value) {
    if(value==null) return left(EmptyCashAmountFailure());
    double cash = value.toDouble();
    if(cash<=0) return left(NonPositiveCashAmountFailure());
    return right(CashAmount._(cash));
  }
  static Either<CashAmountFailure, CashAmount> createFromStringForSale(String value) {
    if(value==null||value.isEmpty) return right(CashAmount._(0.0));
    double cash = double.tryParse(value);
    if(cash==null) return left(InvalidCashAmountFailure());
    return right(CashAmount._(cash));
  }
  static Either<CashAmountFailure, CashAmount> createFromNumForSale(num value) {
    if(value==null) return right(CashAmount._(0.0));
    double cash = value.toDouble();
    return right(CashAmount._(cash));
  }
}

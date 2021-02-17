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

  static Either<CashAmountFailure, CashAmount> createFromString(String value) {
    if(value==null||value.isEmpty) return left(EmptyCashAmountFailure());
    double cash = double.tryParse(value);
    if(cash==null) return left(InvalidCashAmountFailure());
    if(cash<=0) return left(NonPositiveCashAmountFailure()); /// Cash is different for fund and sale, could be zero for sale???
    return right(CashAmount._(cash));
  }
  static Either<CashAmountFailure, CashAmount> createFromNum(num value) {
    if(value==null) return left(EmptyCashAmountFailure());
    double cash = value.toDouble();
    if(cash<=0) return left(NonPositiveCashAmountFailure());
    return right(CashAmount._(cash));
  }
}

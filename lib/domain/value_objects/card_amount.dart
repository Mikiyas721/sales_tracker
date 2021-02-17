import 'package:dartz/dartz.dart';
import 'package:sales_tracker/common/failure.dart';

abstract class CardAmountFailure implements Failure {}

class EmptyCardAmountFailure implements CardAmountFailure {
  @override
  String get message => "Amount is required";
}

class InvalidCardAmountFailure implements CardAmountFailure {
  @override
  String get message => "Invalid Amount";
}

class NonPositiveCardAmountFailure implements CardAmountFailure {
  @override
  String get message => "Amount too low";
}

class CardAmount {
  final int value;

  CardAmount._(this.value);

  static Either<CardAmountFailure, CardAmount> createFromString(String value) {
    if (value == null || value.isEmpty) return left(EmptyCardAmountFailure());
    final intValue = int.tryParse(value);
    if (intValue == null) return left(InvalidCardAmountFailure());
    if (intValue <= 0) return left(NonPositiveCardAmountFailure());
    return right(CardAmount._(intValue));
  }

  static Either<CardAmountFailure, CardAmount> createFromNum(num value) {
    if (value == null) return left(EmptyCardAmountFailure());
    final intValue = value.toInt();
    if (intValue <= 0) return left(NonPositiveCardAmountFailure());
    return right(CardAmount._(intValue));
  }
}

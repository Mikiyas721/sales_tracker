import 'package:dartz/dartz.dart';

abstract class Failure {
  String get message;

  static Option<Failure> getFailure(Failure failure) {
    return failure == null ? none() : some(failure);
  }
}

class SimpleFailure implements Failure {
  final String message;

  const SimpleFailure(this.message);
}

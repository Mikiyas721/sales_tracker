import 'package:dartz/dartz.dart';

abstract class Failure {
  String get message;

  static Option<T> getOption<T>(T failure) {
    return failure == null ? none() : some(failure);
  }

  static Option<Failure> getFailure(Failure failure) {
    return getOption<Failure>(failure);
  }
}

class SimpleFailure implements Failure {
  final String message;

  const SimpleFailure(this.message);
}

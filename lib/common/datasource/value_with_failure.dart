import 'package:dartz/dartz.dart';

import '../failure.dart';


class ValueWithFailure<F extends Failure, V> {
  final Either<F, V> either;

  ValueWithFailure(this.either);

  isFailure() => either.isLeft();

  isValue() => either.isRight();

  V getOrElse(V dflt()) => either.fold((_) => dflt(), id);

  V getOrNull() => either.fold((_) => null, id);

  V getOrThrow() => either.fold((error) => throw error, id);

  F failureOrNull() => either.fold(id, (_) => null);

  F failureOrThrow() => either.fold(id, (_) => throw Error());

  B fold<B>(B ifLeft(F l), B ifRight(V r)) => either.fold(ifLeft, ifRight);

  Option<V> toOption() => either.toOption();

  ifRight(Function(V) onRight) {
    if (this.isValue()) {
      onRight(this.getOrNull());
    }
  }

  ifLeft(Function(F) onLeft) {
    if (this.isFailure()) {
      onLeft(this.failureOrNull());
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'entity.dart';

abstract class IdDto<T> extends Equatable {
  String get id;

  static List<T> toDomainList<T extends Entity, E extends IdDto>(List<E> dto) {
    return dto.map<T>((e) {
      var result = e?.toDomain()?.getOrElse(() => null);
      if (result != null) return result;
    }).toList();
  }

  Option<T> toDomain();
  @override
  List<Object> get props => [id];
}

abstract class TimeStampedDto {
  DateTime get createdAt;

  DateTime get updatedAt;
}

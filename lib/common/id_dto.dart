import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'entity.dart';

abstract class IdDto<T> extends Equatable {
  String get id;

  static List<T> toDomainList<T extends Entity, E extends IdDto>(List<E> dto) {
    return dto.map<T>((e) {
      return e.toDomain().fold(() {print('Unable to Map to Domain');}, (a) => a);
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

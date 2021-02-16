import 'package:equatable/equatable.dart';

abstract class IdDto extends Equatable {
  String get id;

  @override
  List<Object> get props => [id];
}

abstract class TimeStampedDto {
  DateTime get createdAt;

  DateTime get updatedAt;
}

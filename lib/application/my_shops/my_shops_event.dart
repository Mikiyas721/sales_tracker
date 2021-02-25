part of 'my_shops_bloc.dart';

@immutable
@freezed
abstract class MyShopsEvent with _$MyShopsEvent {
  const factory MyShopsEvent.load(bool load) = Load;
}

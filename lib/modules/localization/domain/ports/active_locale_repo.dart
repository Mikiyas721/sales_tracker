import 'package:dartz/dartz.dart';

abstract class IActiveLocaleRepo {
  Future<Unit> setActiveLocaleId(String id);
  Future<Option<String>> getActiveLocaleId();
}

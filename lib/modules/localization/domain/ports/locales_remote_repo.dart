import 'package:dartz/dartz.dart';
import 'package:flocalizer/models/locale.dart';
import 'package:sales_tracker/common/failure.dart';

abstract class ILocalesRemoteRepo {
  Future<Either<Failure, List<FLocale>>> loadLocales();

  Stream<List<FLocale>> watchLocales();
}

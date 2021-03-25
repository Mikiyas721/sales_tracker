import 'package:dartz/dartz.dart';
import 'package:flocalizer/models/locale.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/common/failure.dart';
import 'package:sales_tracker/modules/localization/domain/ports/locales_remote_repo.dart';

@LazySingleton(as: ILocalesRemoteRepo)
class LocalesRemoteRepoImpl implements ILocalesRemoteRepo {
  @override
  Future<Either<Failure, List<FLocale>>> loadLocales() async {
    return left(SimpleFailure(""));
  }

  @override
  Stream<List<FLocale>> watchLocales() async* {}
}

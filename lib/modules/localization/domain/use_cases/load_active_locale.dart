import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sales_tracker/modules/localization/domain/ports/active_locale_repo.dart';

@lazySingleton
class LoadActiveLocaleId {
  final IActiveLocaleRepo repo;

  LoadActiveLocaleId(this.repo);

  Future<Option<String>> execute() {
    return repo.getActiveLocaleId();
  }
}

import 'package:injectable/injectable.dart';
import 'package:sales_tracker/modules/localization/domain/ports/active_locale_repo.dart';

@lazySingleton
class SetActiveLocale {
  final IActiveLocaleRepo repo;

  SetActiveLocale(this.repo);

  Future execute(String id) {
    return repo.setActiveLocaleId(id);
  }
}

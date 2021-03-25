import 'package:injectable/injectable.dart';
import 'package:sales_tracker/config/config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['staging'])
class StagingConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => 'https://sales-tracker-api.herokuapp.com/api';
}

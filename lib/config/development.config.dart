import 'package:injectable/injectable.dart';
import 'package:sales_tracker/config/config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['development'])
class DevelopmentConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => 'http://localhost:3000/api';
}

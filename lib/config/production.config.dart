import 'package:injectable/injectable.dart';
import 'package:sales_tracker/config/config.definition.dart';

@LazySingleton(as: ConfigDefinition, env: ['production'])
class ProductionConfigDefinition implements ConfigDefinition {
  @override
  String get apiUrl => throw UnimplementedError();
}

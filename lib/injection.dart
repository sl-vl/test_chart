import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:test_chart/injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  $initGetIt(getIt, environment: env);
}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:prosto_tipo_testovui_projekt/layers/config/di/dependency_injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initWeather', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.initWeather();

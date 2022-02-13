import 'package:get_it/get_it.dart';
import 'package:get_it_injectable/managers/session_manager.dart';

void configureDependencies() {
  GetIt.I.registerSingleton(SessionManager());
  // GetIt.I.registerLazySingleton(() => SessionManager());
  // GetIt.I.registerFactory(() => SessionManager());
}

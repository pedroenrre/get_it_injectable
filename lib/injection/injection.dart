import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
// import 'package:get_it_injectable/datasources/auth_local_repository.dart';
// import 'package:get_it_injectable/datasources/auth_remote_repository.dart';
// import 'package:get_it_injectable/managers/session_manager.dart';
// import 'package:get_it_injectable/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'injection.config.dart';

// void configureDependencies() {
//   GetIt.I.registerFactory(() => Dio());
//   GetIt.I.registerFactory(() => AuthRemoteRepository(GetIt.I.get()));
//   GetIt.I.registerFactory(() => AuthLocalRepository());
//   GetIt.I.registerFactory<AuthRepository>(
//       () => NodeAuthRepository(GetIt.I.get(), GetIt.I.get()));

//   GetIt.I.registerSingleton(SessionManager(GetIt.I.get()));
//   // GetIt.I.registerLazySingleton(() => SessionManager());
//   // GetIt.I.registerFactory(() => SessionManager());
// }
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModule {
  @singleton
  Dio get dio => Dio();

  @preResolve
  @singleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

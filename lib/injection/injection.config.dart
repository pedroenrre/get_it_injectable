// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../datasources/auth_local_repository.dart' as _i5;
import '../datasources/auth_remote_repository.dart' as _i6;
import '../managers/session_manager.dart' as _i8;
import '../repositories/auth_repository.dart' as _i7;
import 'injection.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.Dio>(registerModule.dio);
  await gh.singletonAsync<_i4.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.factory<_i5.AuthLocalRepository>(
      () => _i5.AuthLocalRepository(get<_i4.SharedPreferences>()));
  gh.factory<_i6.AuthRemoteRepository>(
      () => _i6.AuthRemoteRepository(get<_i3.Dio>()));
  gh.factory<_i7.AuthRepository>(() => _i7.NodeAuthRepository(
      get<_i6.AuthRemoteRepository>(), get<_i5.AuthLocalRepository>()));
  gh.singleton<_i8.SessionManager>(
      _i8.SessionManager(get<_i7.AuthRepository>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}

import 'package:get_it_injectable/datasources/auth_local_repository.dart';
import 'package:get_it_injectable/datasources/auth_remote_repository.dart';
import 'package:get_it_injectable/models/user_model.dart';

class AuthRepository {
  AuthRepository(this.remoteDataSource, this.localDataSource);
  final AuthRemoteRepository remoteDataSource;
  final AuthLocalRepository localDataSource;

  User? getCurrentUser() {
    User? user = localDataSource.getCurrentUser();

    user ??= remoteDataSource.getCurrentUser();

    return user;
  }
}

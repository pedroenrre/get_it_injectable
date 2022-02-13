import 'package:get_it_injectable/datasources/auth_local_repository.dart';
import 'package:get_it_injectable/datasources/auth_remote_repository.dart';
import 'package:get_it_injectable/models/user_model.dart';

class AuthRepository {
  final AuthRemoteRepository remoteDataSource = AuthRemoteRepository();
  final AuthLocalRepository localDataSource = AuthLocalRepository();

  User? getCurrentUser() {
    User? user = localDataSource.getCurrentUser();

    user ??= remoteDataSource.getCurrentUser();

    return user;
  }
}

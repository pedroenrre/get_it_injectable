import 'package:get_it_injectable/datasources/auth_local_repository.dart';
import 'package:get_it_injectable/datasources/auth_remote_repository.dart';
import 'package:get_it_injectable/models/user_model.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  User? getCurrentUser() {}
}

@Injectable(as: AuthRepository)
class NodeAuthRepository implements AuthRepository {
  NodeAuthRepository(this.remoteDataSource, this.localDataSource);
  final AuthRemoteRepository remoteDataSource;
  final AuthLocalRepository localDataSource;

  @override
  User? getCurrentUser() {
    User? user = localDataSource.getCurrentUser();

    user ??= remoteDataSource.getCurrentUser();

    return user;
  }
}

import 'package:dio/dio.dart';
import 'package:get_it_injectable/models/user_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthRemoteRepository {
  AuthRemoteRepository(this.dio);
  final Dio dio;

  User? getCurrentUser() {
    // Comunicaria com api para pegar o usuário
    return User('Pedro remote');
  }
}

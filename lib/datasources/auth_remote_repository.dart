import 'package:dio/dio.dart';
import 'package:get_it_injectable/models/user_model.dart';

class AuthRemoteRepository {
  AuthRemoteRepository(this.dio);
  final Dio dio;

  User? getCurrentUser() {
    // Comunicaria com api para pegar o usuário
    return User('Pedro remote');
  }
}

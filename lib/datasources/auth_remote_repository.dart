import 'package:dio/dio.dart';
import 'package:get_it_injectable/models/user_model.dart';

class AuthRemoteRepository {
  final Dio dio = Dio();

  User? getCurrentUser() {
    // Comunicaria com api para pegar o usuário
    return User('Pedro remote');
  }
}

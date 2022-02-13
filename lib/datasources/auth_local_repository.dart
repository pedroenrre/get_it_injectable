import 'package:get_it_injectable/models/user_model.dart';

class AuthLocalRepository {
  User? getCurrentUser() {
    // Comunicaria com sharedprefferences para pegar o usuário
    return User('Pedro local');
  }
}

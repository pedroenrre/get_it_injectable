import 'package:get_it_injectable/models/user_model.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@injectable
class AuthLocalRepository {
  AuthLocalRepository(this.prefs);

  SharedPreferences prefs;

  User? getCurrentUser() {
    // Comunicaria com sharedpreferences para pegar o usuário
    return User('Pedro local');
  }
}

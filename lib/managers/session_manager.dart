import 'package:get_it_injectable/models/user_model.dart';
import 'package:get_it_injectable/repositories/auth_repository.dart';

class SessionManager {
  SessionManager(this.authRepository) {
    _getCurrentUser();
  }

  final AuthRepository authRepository;

  User? user;

  void _getCurrentUser() {
    user = authRepository.getCurrentUser();
  }
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_injectable/managers/session_manager.dart';

import 'home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final SessionManager sessionManager = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Entrar'),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          },
        ),
      ),
    );
  }
}

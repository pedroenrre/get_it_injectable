import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:get_it_injectable/managers/session_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final SessionManager sessionManager = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sessionManager.user?.name ?? ""),
      ),
    );
  }
}

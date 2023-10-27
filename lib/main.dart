import 'package:flutter/material.dart';

import 'home_screen.dart';

/// Todo Application
/// CRUD Create, Read , Update , Delete

void main() {
  runApp(const TodoApp());
}
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        home: HomeScreen(),
      );
    }
}



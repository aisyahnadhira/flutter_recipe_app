import 'package:flutter/material.dart';
import 'package:recipe_app/pages/main_screen.dart';
import 'package:recipe_app/pages/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const StartScreen(),
    );
  }
}


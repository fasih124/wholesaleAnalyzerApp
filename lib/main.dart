import 'package:flutter/material.dart';
import 'views/log_in.dart';
import'views/sign_up.dart';
import'views/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Asasa Keeper';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const Splash(),
      routes: {
        '/signup': (context) => const SignUp(title: _title,),
        '/login': (context) => const LogIn(title: _title,),
      },
    );
  }
}


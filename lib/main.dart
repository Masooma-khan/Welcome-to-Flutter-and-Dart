import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepOrange),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
         routes: {
          "/":(context) => const LoginPage(),
          "/home":(context) => const HomePage(),
          "/login":(context) => const LoginPage()

        },
          
        );
  }
}
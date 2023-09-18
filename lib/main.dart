import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_page.dart';
import 'package:flutter_application_3/login_page.dart';


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
        initialRoute:"/home",
       routes: {
          "/":(context) => const LoginPage(),
          "/home":(context) => const HomePage(),
          "/login":(context) => const LoginPage()

        },
    );
  }
}

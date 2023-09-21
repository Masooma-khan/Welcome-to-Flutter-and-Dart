import 'package:flutter/material.dart';
import 'package:flutter_application_3/home_page.dart';
import 'package:flutter_application_3/login_page.dart';
import 'package:flutter_application_3/utilis/routes.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepOrange,
        fontFamily: GoogleFonts.lato().fontFamily,
        ),
        darkTheme: ThemeData(
          brightness: Brightness.light,
        ),
        initialRoute:"/home",
       routes: {
          "/":(context) => const LoginPage(),
         MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),

        },
    );
  }
}

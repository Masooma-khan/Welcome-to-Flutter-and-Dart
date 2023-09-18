import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Material(
      child: Column(
        children: [
          Image(
         image:  AssetImage("assets/images/logon_image.jpg"),
         fit: BoxFit.fitHeight,
          ),
        ],
      )
    );
  }
}

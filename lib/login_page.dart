import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white70,
        child: Column(children: [
          Image.asset(
            "assets/images/logon_image.png",
            fit: BoxFit.cover,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Enter userName", labelText: "Enter username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter passwored", labelText: "Enter password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {
                    print("Hi Masooma");
                  },
                  child: const Text("login"),
                )
              ],
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white70,
        child: Column(children: [
          Image.asset(
            "assets/images/logon_image.png",
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome $name",
            style: const TextStyle(
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
                      onChanged:(value) {
                        name=value;
                        setState(() {
                          
                        });
                      },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Enter passwored", labelText: "Enter password"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 150,
                  height: 50,
                  color: Colors.amberAccent,
                   alignment: Alignment.center,
                  child: const Text("login"),
                ),
                /*ElevatedButton(
                  child:  Text("login"),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                )*/
              ],
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_3/utilis/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

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
                onChanged: (value) {
                  name = value;
                  setState(() {});
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
              InkWell(
                onTap: () async {
                  setState(() {
                    changeButton = true;
                  });

                  await Future.delayed(const Duration(seconds:1));
                  Navigator.pushNamed(context, MyRoutes.homeRoute);
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  width: changeButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  
                  child:changeButton
                  ? const Icon(Icons.done,
                  color: Colors.white,
                  )
                   : const Text("login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )),
                  decoration: BoxDecoration(
                    color: Colors.red,
                     borderRadius:
                      BorderRadius.circular(changeButton? 50 : 8),
                      ),
                  ),
                ),
                /* ElevatedButton(
                  child:  const Text("login"),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                )*/
            ],
          ),
        )
      ]),
    );
  }
}

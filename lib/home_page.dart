import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "HadiTech";

  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: const Text("Catalog App"),
      ),
      body: Center(
        child: Text("Welcome to 30$days Days of Flutter"),
       ),
      drawer: const Drawer(),
    );
  }
}
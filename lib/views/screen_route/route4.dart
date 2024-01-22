import 'package:flutter/material.dart';

class ScreenRoute4 extends StatelessWidget {
  const ScreenRoute4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route 4"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "Route 4",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

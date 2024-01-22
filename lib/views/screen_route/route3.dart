import 'package:flutter/material.dart';

class ScreenRoute3 extends StatelessWidget {
  const ScreenRoute3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route 3"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "Route 3",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

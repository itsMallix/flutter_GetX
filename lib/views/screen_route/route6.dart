import 'package:flutter/material.dart';

class ScreenRoute6 extends StatelessWidget {
  const ScreenRoute6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route 5"),
        backgroundColor: Colors.amber,
      ),
      body: const Center(
        child: Text(
          "Route 5",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_getx/views/screen_route/route3.dart';
import 'package:get/get.dart';

class ScreenRoute2 extends StatelessWidget {
  const ScreenRoute2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route 2"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Route 2",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.back();
              },
              child: const Text("Back"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.to(const ScreenRoute3());
              },
              child: const Text("Go To Route 3"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_getx/views/screen_route/route2.dart';
import 'package:flutter_getx/views/screen_route/route3.dart';
import 'package:flutter_getx/views/screen_route/route4.dart';
import 'package:flutter_getx/views/screen_route/route5.dart';
import 'package:flutter_getx/views/screen_route/route6.dart';
import 'package:flutter_getx/views/screen_route_named/screen_named_main.dart';
import 'package:get/get.dart';

class ScreenRoute1 extends StatelessWidget {
  const ScreenRoute1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Route Mangement"),
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              Get.off(const ScreenRoute2()); //no back
            },
            child: const Text("Go To Route 2"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              Get.to(const ScreenRoute3()); //bisa back
            },
            child: const Text("Go To Route 3"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              Get.to(const ScreenRoute4());
            },
            child: const Text("Go To Route 4"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              Get.to(const ScreenRoute5());
            },
            child: const Text("Go To Route 5"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
            ),
            onPressed: () {
              Get.to(const ScreenRoute6());
            },
            child: const Text("Go To Route 6"),
          ),
          const SizedBox(height: 20),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Get.to(const ScreenNamed());
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

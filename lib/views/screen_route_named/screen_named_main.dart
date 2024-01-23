import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx/controller/bind_controller.dart';
import 'package:flutter_getx/views/screen_bindings/screen_binding_main.dart';
import 'package:get/get.dart';

class ScreenNamed extends StatelessWidget {
  const ScreenNamed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named Getx"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.toNamed("/variable");
              },
              child: const Text("Go to Screen Variable"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.toNamed("/dependency");
              },
              child: const Text("Go to Screen Dependency"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.toNamed("/worker");
              },
              child: const Text("Go to Screen Worker"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          // Get.to(() => const ScreenBindings()); // bisa pakai ini atau binding
          // Get.to(
          //   () => ScreenBindings(),
          //   binding: BindingsBuilder(
          //     () => Get.put(
          //       BindingController(),
          //     ),
          //   ),
          // ); // Ini salah
          Get.to(
            () => const ScreenBindings(),
            binding: BindingsBuilder.put(
              () =>
                  BindingController(), // bidning conroller, jadi ga perlu di inisiasi di setiap page
            ),
          );
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

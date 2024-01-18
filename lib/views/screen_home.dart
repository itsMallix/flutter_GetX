import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/getx_controller.dart';
import 'package:get/get.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    final getController = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Belajar Getx"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "${getController.number.value}", //ambil value untuk diambil datanya karena obs
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    getController.decrement();
                    Get.snackbar(
                      "Dikurangi",
                      "Number berhasil dikurangi",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    getController.increment();
                    Get.snackbar(
                      "Ditambah",
                      "Number berhasil ditambah",
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.defaultDialog(
                    title: "Test Dialogue",
                    content: const Text("Test dialogue content"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Cancel"),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("Ok"),
                      ),
                    ]);
              },
              child: const Text(
                "Test Dialog",
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
              ),
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: const EdgeInsets.all(12.0),
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Test Bottom sheet"),
                        Text("Test Bottom sheet"),
                        Text("Test Bottom sheet"),
                        Text("Test Bottom sheet"),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Test Bottom Sheet"),
            )
          ],
        ),
      ),
    );
  }
}

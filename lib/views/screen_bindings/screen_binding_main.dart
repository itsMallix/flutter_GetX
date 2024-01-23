import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/bind_controller.dart';
import 'package:get/get.dart';

class ScreenBindings extends StatelessWidget {
  const ScreenBindings({super.key});

  @override
  Widget build(BuildContext context) {
    // final bindController = Get.put(BindingController());
    BindingController counter = Get.find();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
        title: const Text("Bindings"),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "${counter.data.value}",
                  style: const TextStyle(fontSize: 20),
                )),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    counter.decrement();
                  },
                  child: const Text("-"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                  ),
                  onPressed: () {
                    counter.increment();
                  },
                  child: const Text("+"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

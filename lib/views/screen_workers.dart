import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/work_controller.dart';
import 'package:get/get.dart';

class ScreenWorker extends StatelessWidget {
  const ScreenWorker({super.key});

  @override
  Widget build(BuildContext context) {
    final workController = Get.put(WorkerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Worker"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                "Terjadi perubahan : ${workController.dataObs} x",
                style: TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                workController.change();
              },
              decoration: InputDecoration(
                labelText: "Data",
                border: OutlineInputBorder(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
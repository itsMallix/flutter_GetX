import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/deb_controller.dart';
import 'package:flutter_getx/views/screen_dependency_2.dart';
import 'package:get/get.dart';

class ScreenDependency1 extends StatelessWidget {
  final debController = Get.put(DependencyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency 1"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "${debController.data_1["name"]} - ${debController.data_1["age"]}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                ),
                onPressed: () {
                  Get.to(ScreenDependency2());
                },
                child: const Text("Next to Dependency 2"),
              )
            ],
          ),
        ),
      ),
    );
  }
}

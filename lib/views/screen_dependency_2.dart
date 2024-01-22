import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_getx/controller/deb_controller.dart';
import 'package:get/get.dart';

class ScreenDependency extends StatelessWidget {
  const ScreenDependency({super.key});

  @override
  Widget build(BuildContext context) {
    final debController = Get.put(DependencyController());
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dependency 1"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text(
                "${debController.data_1["name"] + debController.data_1["age"]}"),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Next to Dependency 2"),
            )
          ],
        ),
      ),
    );
  }
}

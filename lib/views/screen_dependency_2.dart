import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/deb_controller.dart';
import 'package:flutter_getx/views/screen_route/route1.dart';
import 'package:get/get.dart';

class ScreenDependency2 extends StatelessWidget {
  const ScreenDependency2({super.key});

  @override
  Widget build(BuildContext context) {
    DependencyController debController = Get.find();
    //bisa pakai get put, namun lebih efektif begini
    // karena tinggal mencari controller yang sudah diinisiasi sebelumnya
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
                "${debController.data_2["name"]} - ${debController.data_2["age"]}",
                style: const TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        onPressed: () {
          Get.to(() => const ScreenRoute1());
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}

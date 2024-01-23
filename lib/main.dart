import 'package:flutter/material.dart';
import 'package:flutter_getx/bindings/binding_counter.dart';
import 'package:flutter_getx/controller/bind_controller.dart';
import 'package:flutter_getx/views/screen_dependency_1.dart';
import 'package:flutter_getx/views/screen_home.dart';
import 'package:flutter_getx/views/screen_variable.dart';
import 'package:flutter_getx/views/screen_workers.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const ScreenHome(),
      getPages: [
        //punya getx
        GetPage(
          name: "/variable",
          page: () => const ScreenVariable(),
        ),
        GetPage(
          name: "/dependency",
          page: () => ScreenDependency1(),
        ),
        GetPage(
          name: "/worker",
          page: () => const ScreenWorker(),
          binding: CounterBinding(), // pakai 1 binding yang disimpan pada class
        ),
      ],
    );
  }
}

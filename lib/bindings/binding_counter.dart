import 'package:flutter_getx/controller/bind_controller.dart';
import 'package:get/get.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindingController());
  }
}

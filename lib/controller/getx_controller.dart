import 'package:get/get.dart';

class Controller extends GetxController {
  var number = 0.obs; //state yang akan dipantau perubahannya
  increment() => number++;
  decrement() => number--;
}

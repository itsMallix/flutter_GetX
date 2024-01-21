import 'package:get/get.dart';

class NumController extends GetxController {
  // var number = 0.obs; //state / nilai  yang akan dipantau perubahannya
  int number = 0; //state / nilai  yang akan dipantau perubahannya

  void incrementNumber() {
    number++;
  }

  void decrementNumber() {
    number--;
  }

  void refreshNumber() {
    update();
  }
}

import 'package:get/get.dart';

class NumController extends GetxController {
  // var number = 0.obs; //state / nilai  yang akan dipantau perubahannya
  // int number = 0; //state / nilai  yang akan dipantau perubahannya

  RxInt number = 0.obs;
  RxString name = "Test".obs;
  RxDouble doubleNum = 0.0.obs;
  RxBool databol = false.obs;
  RxList<int> dataList = [1, 2, 3].obs;
  RxSet<int> dataSet = {1, 2, 3}.obs;
  RxMap<String, dynamic> dataMap = {
    "id": 1,
    "name": "budi",
    "umur": 30,
  }.obs;

  int nextNumber = 4;

  void incrementNumber() {
    number++;
  }

  void decrementNumber() {
    number--;
  }

  void incrementDouble() {
    doubleNum.value++;
  }

  void decrementDouble() {
    doubleNum.value--;
  }

  void refreshNumber() {
    update();
  }

  void updateString() {
    name.value = "data {updated}";
  }

  void resetString() {
    name.value = "Test";
  }

  void changeBool() {
    // if (databol.isTrue) {
    //   databol.value = false;
    // } else {
    //   databol.value = true;
    // }

    databol.toggle(); // kebalikan
  }

  void addList() {
    dataList.add(nextNumber);
    nextNumber++;
  }

  void changeList() {
    dataList[0] = 99;
    dataList[1] = 23;
  }

  void addSet() {
    dataSet.add(nextNumber);
    nextNumber++;
  }

  void changeSet() {
    dataSet.remove(1);
  }

  void changeMap() {
    dataMap['name'] = "Sumanto";
  }
}

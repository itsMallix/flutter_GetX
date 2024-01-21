import 'package:get/get.dart';

class WorkerController extends GetxController {
  RxInt dataObs = 0.obs;

  void change() {
    dataObs++;
  }

  @override
  void onInit() {
    //  //worker ever => pantau terus
    // ever(dataObs, (callback) {
    //   print("Data dipantau terus");
    // });

    // once(
    //   //worker once => pantau sekali
    //   dataObs,
    //   (callback) {
    //     print("data dipantau sekali");
    //   },
    // );

    // debounce(
    //  // worker debounce => ada interval untuk mencegah ddos
    //   dataObs,
    //   (callback) {
    //     print("data dipantau 2 detik");
    //   },
    //   time: const Duration(seconds: 2),
    // );

    // interval(
    //worker interval => memantau selama perubahan terjadi
    //   dataObs,
    //   (callback) {
    //     print("data dipantau perubahan");
    //   },
    //   time: const Duration(seconds: 2),
    // );
    super.onInit();
  }
}

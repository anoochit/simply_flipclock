import 'dart:async';

import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class HomeController extends GetxController {
  RxInt hour = 00.obs;
  RxInt minute = 00.obs;
  RxInt second = 00.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    Timer.periodic(const Duration(seconds: 1), (timer) {
      hour.value = DateTime.now().hour;
      minute.value = DateTime.now().minute;
      second.value = DateTime.now().second;
    });
  }

  @override
  void onClose() {
    super.onClose();
    WakelockPlus.toggle(enable: false);
  }
}

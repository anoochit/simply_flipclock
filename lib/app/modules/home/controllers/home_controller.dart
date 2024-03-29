
import 'package:get/get.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class HomeController extends GetxController {
  RxInt hour = 00.obs;
  RxInt minute = 00.obs;
  RxInt second = 00.obs;


  @override
  void onClose() {
    super.onClose();
    WakelockPlus.toggle(enable: false);
  }
}

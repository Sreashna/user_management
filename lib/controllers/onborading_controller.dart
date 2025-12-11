import 'dart:async';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxInt pageIndex = 0.obs;
  late Timer timer;

  @override
  void onInit() {
    super.onInit();

    timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      if (pageIndex.value < 2) {
        pageIndex.value++;
      } else {
        goToLogin();
      }
    });
  }

  void nextPressed() {
    timer.cancel();
    goToLogin();
  }

  void goToLogin() {
    Get.offAllNamed('/login');
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }
}

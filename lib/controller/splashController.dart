import 'dart:async';

import 'package:blood_donation/pages/home/home.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final count = 0.obs;
  var height = 0.0.obs;
  @override
  void onInit() {
    loadPage();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;

  loadPage() {
    var _duration = Duration(seconds: 5);

    return Timer(_duration, navigate);
  }

  void navigate() {
    Get.off(() => Home());
  }
}

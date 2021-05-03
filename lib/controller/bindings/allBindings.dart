import 'package:blood_donation/controller/homeController.dart';
import 'package:get/get.dart';

import '../splashController.dart';

class AllBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

import 'package:get/get.dart';

import '../../pages/splash.dart';
import '../splashController.dart';

class AllBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }
}

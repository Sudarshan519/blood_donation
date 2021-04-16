import 'dart:async';

import 'package:blood_donation/pages/login/login.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  final count = 0.obs;
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
        var _duration = Duration(seconds: 2);
        
        return Timer(_duration,navigate);
      }
      void navigate(){
 Get.off(() => LoginNRegister());
      }
}

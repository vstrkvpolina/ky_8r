import 'package:get/get.dart';
import 'package:ky_8r/app/data/services/auth_service.dart';

class SplashController extends GetxController {
AuthService authService = Get.find();

  
  @override
  void onInit() async {
    await authService.tryAutoLogin();
    if(authService.loggedIn){

    }
    super.onInit();
  }
}
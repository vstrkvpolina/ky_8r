import 'package:get/get.dart';
import 'package:ky_8r/app/routes/app_pages.dart';
import 'package:flutter/widgets.dart';
import 'package:ky_8r/app/data/services/api_service.dart';
import 'package:ky_8r/app/data/services/auth_service.dart';

class SigninController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService = Get.find();

  var mailController = TextEditingController();
  var passController = TextEditingController();

  signIn() async {
    bool res = await authService.login(
      mailController.text, passController.text);
    if (res) {
      authService.loggedIn = true;
      Get.offNamed(Routes.HOME);
      print('Registration is succesfull!');
    } else {
      print ('Something went wrong');
    }
  }
  
  toSignUp(){
    Get.toNamed(Routes.SIGNUP);
  }
}
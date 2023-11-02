import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ky_8r/app/data/services/auth_service.dart';
import 'package:ky_8r/app/routes/app_pages.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  AuthService authService = Get.find();
  var mailController = TextEditingController();
  var passController = TextEditingController();
  var passRepController = TextEditingController();

  void sighUp() async {
    if (passController.text.length < 8) {
      showSnack('Password length less than 8 simbols');
      return;
    }

    if (passController.text != passRepController.text) {
      showSnack('Password is not matching');
      return;
    }

    bool res = await authService.registration(
        mailController.text, passController.text);
    if (res) {
      authService.loggedIn = true;
      Get.offNamed(Routes.HOME);
      showSnack('Registration is successfull!', isError: false);
    } else {
      showSnack('Registration failed');
    }
  }

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(
      GetSnackBar(
        
      )
    )
  }


    if (!mailController.text.contains('@')) {
      showSnack('invalid mail');
      return;
    }
    bool res = await authService.registration(
        mailController.text, passController.text);
    if (res) {
      authService.loggedIn = true;
      Get.toNamed(Routes.HOME);
      showSnack('Registration is succsessful', isError: false);
    } else {
      showSnack('Registration failed');
    }
  }

  void tryRegister(String mail, String password) =>
      authService.registration(mail, password);

  void showSnack(String message, {isError = true}) {
    Get.showSnackbar(GetSnackBar(
      message: message,
      backgroundColor: isError ? Colors.red : Colors.green,
      duration: const Duration(seconds: 1),
    ));
  }
}
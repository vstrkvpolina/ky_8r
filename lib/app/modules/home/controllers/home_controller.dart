import 'package:get/get.dart';
import 'package:ky_8r/app/data/services/api_service.dart';
import 'package:ky_8r/app/data/services/auth_service.dart';

class HomeController extends GetxController {
  ApiService apiService = Get.find();
  AuthService authService  = Get.find();

  void logout() {
    apiService.logout();
  }
}
  
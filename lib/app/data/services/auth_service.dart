import 'package:get/get.dart';
import 'package:ky_8r/app/modules/data/services/storage_service.dart';
import 'package:ky_8r/app/modules/data/services/api_service.dart';

class AuthService extends GetxService {
  StorageService storageService = Get.find();
  ApiService apiService = Get.find();

  bool isLoggedIn = false;

  Future <void> tryAutoLogin () async {
    //TODO
    String? refreshToken = await storageService.getRefreshToken(); 
      if (refreshToken == null) {
        isLoggedIn = false;
        return;
      } else {
        bool refreshResult = await apiService.refreshTokens();
        isLoggedIn = refreshResult;
      }
    }
  

  Future<AuthService> init() async {
    return this;
  }
}

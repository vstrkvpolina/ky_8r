import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ky_8r/app/core/constans.dart';
import 'package:ky_8r/app/data/services/storage_service.dart';
import 'package:ky_8r/app/routes/app_pages.dart';

class ApiService extends GetxService{
  StorageService storageService = Get.find();
  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl,));

  Future<bool> refreshTokens() async {
    return false;
  }

  void logout() async {
    storageService.clear();
    Get.offNamed(Routes.SIGNIN);
  }

  Future<ApiService> init() async {
    return this;
  }
}
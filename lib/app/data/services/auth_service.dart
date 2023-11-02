import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ky_8r/app/core/constans.dart';
import 'package:ky_8r/app/data/models/jwt_model.dart';
import 'package:ky_8r/app/data/services/api_service.dart';
import 'package:ky_8r/app/data/services/storage_service.dart';

class AuthService extends GetxService {
  StorageService storageService = Get.find();
  ApiService apiService = Get.find();
  late JWTModel _tokens;
  Dio client = Dio(BaseOptions(baseUrl: Constants.baseUrl,));

  Future<bool> refresh() async {
    try{
    var res = await client.post(ApiEndpoints.refresh, data: _tokens.toJson());
    var tokens = JWTModel.fromJson(res.data);
    updateTokens(tokens);
    if (res.statusCode == 200) return true;

  } catch(e){
    print(e);
  }
    return false;
  }
  Future<bool> login(String email, String password) async => _auth(email, password, ApiEndpoints.login);
  Future<bool> registration(String email, String password) async => _auth(email, password, ApiEndpoints.registration);

  Future<bool> _auth(String email, String password, String path) async {
    try {
      var response = await client.post(path, data: {
        'email': email,
        'password': password,
      });
      var tokens = JWTModel.fromJson(response.data);
      updateTokens(tokens);
      if (response.statusCode == 200) return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

  bool loggedIn = false;

  Future<void> updateTokens(JWTModel tokens) async {
    this._tokens = tokens;
    storageService.writeRefreshToken(tokens.refreshToken);
  }

  Future<void> tryAutoLogin() async {
    //TODO
    String refreshToken = storageService.getRefreshToken();
    print(refreshToken);
    var tokens = JWTModel(null, refreshToken);
    updateTokens(tokens);
    print(_tokens);
    if (tokens.refreshToken.isEmpty) {
      loggedIn = false;
      return;
    } else {
      bool refreshResult = await refresh();
      print(refreshResult);
      loggedIn = refreshResult;
    }
  }

  Future<AuthService> init() async {
    return this;
  }
}
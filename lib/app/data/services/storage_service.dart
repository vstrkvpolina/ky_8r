import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class StorageService extends GetxService {
  late Box box;

  void clear() {
    box.clear();
  }

  String getRefreshToken() => _readData('refresh') ?? '';

  void writeRefreshToken(String token) => _writeData('refresh', token);

  void _writeData(String key, String value) async {
    box.put(key, value);
  }

  String? _readData(String key) => box.get(key);

  Future<StorageService> init() async {
    await Hive.initFlutter();
    box = await Hive.openBox('kt');
    return this;
  }
}
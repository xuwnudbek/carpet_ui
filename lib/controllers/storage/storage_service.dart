import 'package:get_storage/get_storage.dart';

class StorageService {
  static final box = GetStorage();

  static String token = box.read('token') ?? '';
  set setToken(String value) {
    box.write('token', value);
    save();
  }

  static save() {
    box.save();
  }
}

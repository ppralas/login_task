import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:init_test_task/common/constants.dart';
import 'package:init_test_task/common/dependency_registration.dart';
import 'package:init_test_task/data/models/sign_in_reponse.dart';
import 'package:init_test_task/data/network/storage.dart';

final storageProvider = Provider<IStorage>(
  (ref) => Storage(
    ref.read(secureStorageProvider),
  ),
);

class Storage implements IStorage {
  final FlutterSecureStorage _secureStorage;

  Storage(this._secureStorage);

  @override
  Future<String?> getToken() async {
    try {
      final token = await _secureStorage.getToken();
      return token;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> removeUserData() async {
    await _secureStorage.removeTokens();
  }

  Future<void> _storeToken(String token) async {
    await _secureStorage.setToken(token);
  }

  @override
  Future<void> storeTokenData(SignInResponse data) async {
    await _storeToken(data.token);
  }
}

extension SecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getToken() async {
    try {
      return read(key: SharedPreferencesKeys.tokenKey);
    } catch (e) {
      return null;
    }
  }

  Future<void> removeTokens() async {
    await delete(key: SharedPreferencesKeys.refreshTokenKey);
    await delete(key: SharedPreferencesKeys.tokenKey);
  }

  Future<void> setToken(String value) async {
    await write(key: SharedPreferencesKeys.tokenKey, value: value);
  }
}

import 'package:init_test_task/data/models/user_response.dart';

abstract class IStorage {
  Future<String?> getToken();
  Future<void> removeUserData() async {}
  Future<void> storeTokenData(UserResponse data);
}

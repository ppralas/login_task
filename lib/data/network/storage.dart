import 'package:init_test_task/data/models/sign_in_reponse.dart';

abstract class IStorage {
  Future<String?> getToken();
  Future<void> removeUserData() async {}
  Future<void> storeTokenData(SignInResponse data);
}

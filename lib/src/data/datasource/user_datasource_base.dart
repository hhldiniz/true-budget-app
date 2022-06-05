import '../model/user.dart';

abstract class UserDatasourceBase {
  Future<User?> login(String username, String password);
}
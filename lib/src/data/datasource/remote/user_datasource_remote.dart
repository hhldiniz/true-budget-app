import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/remote/network/user_service.dart';
import 'package:true_budget/src/data/datasource/user_datasource_base.dart';
import 'package:true_budget/src/data/model/user.dart';

class UserDatasourceRemote implements UserDatasourceBase {
  final UserService _userService = Get.find();

  @override
  Future<User?> login(String username, String password) async {
    return _userService
        .login(username, password)
        .catchError((e)=> null)
        .then((value) => value != null ? User(value["name"]) : null);
  }
}

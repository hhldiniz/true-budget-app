import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/local/user_datasource_local.dart';
import 'package:true_budget/src/data/datasource/remote/user_datasource_remote.dart';

import '../model/user.dart';

class UserRepository {
  final UserDatasourceLocal _userDatasourceLocal = Get.find();
  final UserDatasourceRemote _userDatasourceRemote = Get.find();

  Future<User?> login(String username, String password) async {
    return null;
  }
}
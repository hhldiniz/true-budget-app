import 'package:true_budget/src/data/datasource/user_datasource_base.dart';
import 'package:true_budget/src/data/model/user.dart';

class UserDatasourceLocal implements UserDatasourceBase {
  @override
  Future<User?> login(String username, String password) async {
    return User("");
  }

}
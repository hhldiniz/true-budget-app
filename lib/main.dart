import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/local/info_card_datasource_local.dart';
import 'package:true_budget/src/data/datasource/local/user_datasource_local.dart';
import 'package:true_budget/src/data/datasource/remote/info_card_datasource_remote.dart';
import 'package:true_budget/src/data/datasource/remote/network/info_card_service.dart';
import 'package:true_budget/src/data/datasource/remote/user_datasource_remote.dart';
import 'package:true_budget/src/data/repository/info_card_repository.dart';
import 'package:true_budget/src/data/repository/user_repository.dart';
import 'package:true_budget/src/domain/usecase/add_info_card_use_case.dart';
import 'package:true_budget/src/domain/usecase/perform_login_use_case.dart';
import 'package:true_budget/src/presentation/controllers/add_info_card_controller.dart';
import 'package:true_budget/src/presentation/controllers/login_controller.dart';
import 'package:true_budget/src/presentation/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void injectDependencies() {
    _injectDependencies();
    _injectServices();
    _injectDataSources();
    _injectRepositories();
    _injectUseCases();
    _injectControllers();
  }

  void _injectDependencies() {
    Get.put(Dio(BaseOptions(baseUrl: "")), permanent: true);
  }

  void _injectServices() {
    Get.put(InfoCardService());
  }

  void _injectDataSources() {
    Get.put(UserDatasourceLocal(), permanent: true);
    Get.put(UserDatasourceRemote(), permanent: true);
    Get.put(InfoCardDatasourceLocal(), permanent: true);
    Get.put(InfoCardDatasourceRemote(), permanent: true);
  }

  void _injectRepositories() {
    Get.put(UserRepository(), permanent: true);
    Get.put(InfoCardRepository(), permanent: true);
  }
  
  void _injectUseCases() {
    Get.put(AddInfoCarUseCase(), permanent: true);
    Get.put(PerformLoginUseCase(), permanent: true);
  }

  void _injectControllers() {
    Get.put(LoginController());
    Get.put(AddInfoCardController());
  }

  @override
  Widget build(BuildContext context) {
    injectDependencies();
    return MaterialApp(
      title: 'True Budget',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const Login(),
    );
  }
}
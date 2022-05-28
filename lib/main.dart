import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/local/info_card_datasource_local.dart';
import 'package:true_budget/src/data/datasource/remote/info_card_datasource_remote.dart';
import 'package:true_budget/src/data/datasource/remote/network/info_card_service.dart';
import 'package:true_budget/src/data/repository/info_card_repository.dart';
import 'package:true_budget/src/domain/usecase/add_info_card_use_case.dart';
import 'package:true_budget/src/presentation/controllers/add_info_card_controller.dart';
import 'package:true_budget/src/presentation/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void injectDependencies() {
    _injectServices();
    _injectDataSources();
    _injectRepositories();
    _injectUseCases();
    _injectControllers();
  }

  void _injectServices() {
    Get.put(InfoCardService());
  }

  void _injectDataSources() {
    Get.put(InfoCardDatasourceLocal(), permanent: true);
    Get.put(InfoCardDatasourceRemote(), permanent: true);
  }

  void _injectRepositories() {
    Get.put(InfoCardRepository(), permanent: true);
  }
  
  void _injectUseCases() {
    Get.put(AddInfoCarUseCase(), permanent: true);
  }

  void _injectControllers() {
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
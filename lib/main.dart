import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:true_budget/src/presentation/controllers/add_info_card_controller.dart';
import 'package:true_budget/src/presentation/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  void injectDependencies() {
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
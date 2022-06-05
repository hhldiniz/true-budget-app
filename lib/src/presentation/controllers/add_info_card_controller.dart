import 'package:get/get.dart';
import 'package:true_budget/src/domain/usecase/add_info_card_use_case.dart';

import '../../data/model/category.dart';

class AddInfoCardController extends GetxController {
  AddInfoCardController();

  final AddInfoCarUseCase addInfoCarUseCase = Get.find();

  Rx<Category> selectedCategory = const Category("Groceries").obs;
}

import 'package:get/get.dart';

import '../../data/model/card_type.dart';
import '../../data/model/category.dart';

class AddInfoCardController {

  AddInfoCardController();

  Rx<CardType> selectedCardType = CardType.spend.obs;
  Rx<Category> selectedCategory = const Category("Groceries").obs;

}
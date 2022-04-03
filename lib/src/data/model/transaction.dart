import 'package:true_budget/src/data/model/category.dart';

class Transaction {
  String description;
  Category category;
  double value;

  Transaction(this.description, this.category, this.value);
}
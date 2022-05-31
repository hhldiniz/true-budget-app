import 'package:true_budget/src/data/model/category.dart';
import 'package:true_budget/src/data/model/transaction_type.dart';

class Transaction {
  String description;
  Category category;
  TransactionType transactionType;
  double value;

  Transaction(this.description, this.category, this.transactionType, this.value);
}
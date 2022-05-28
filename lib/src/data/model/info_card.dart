import 'package:true_budget/src/domain/entity/base_entity.dart';
import 'package:true_budget/src/data/model/card_type.dart';

class InfoCard extends BaseEntity {
  double amount;
  CardType type;

  InfoCard(this.amount, this.type);
}
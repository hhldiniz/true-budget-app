import 'package:true_budget/src/domain/entity/base_entity.dart';
import 'package:true_budget/src/data/model/card_type.dart';

import 'category.dart';

class InfoCard extends BaseEntity {
  Category category;
  CardType type;

  InfoCard(this.category, this.type);
}
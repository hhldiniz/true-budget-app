import 'package:true_budget/src/domain/entity/base_entity.dart';

import 'category.dart';

class InfoCard extends BaseEntity {
  Category category;
  double value;

  InfoCard(this.category, this.value);
}
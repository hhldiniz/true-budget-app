import 'package:true_budget/src/data/model/info_card.dart';

abstract class InfoCardDatasource {
  Future<List<InfoCard>> fetchAll();
}

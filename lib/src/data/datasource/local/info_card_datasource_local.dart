import 'package:true_budget/src/data/datasource/info_card_datasource_base.dart';
import 'package:true_budget/src/data/model/info_card.dart';

class InfoCardDatasourceLocal implements InfoCardDatasource {
  @override
  Future<List<InfoCard>> fetchAll() async {
    return [];
  }
}

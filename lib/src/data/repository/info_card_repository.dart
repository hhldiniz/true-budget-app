import 'dart:io';

import 'package:get/get.dart';
import 'package:true_budget/src/data/datasource/local/info_card_datasource_local.dart';
import 'package:true_budget/src/data/datasource/remote/info_card_datasource_remote.dart';
import 'package:true_budget/src/data/model/info_card.dart';

class InfoCardRepository {
  final InfoCardDatasourceLocal infoCardDatasourceLocal = Get.find();
  final InfoCardDatasourceRemote infoCardDatasourceRemote = Get.find();

  Future<bool> _networkIsAvailable() async{
    return (await InternetAddress.lookup("8.8.8.8")).isNotEmpty;
  }

  Future<List<InfoCard>> fetchAll() async {
    if (await _networkIsAvailable()) {
      return infoCardDatasourceRemote.fetchAll();
    } else {
      return infoCardDatasourceLocal.fetchAll();
    }
  }
}

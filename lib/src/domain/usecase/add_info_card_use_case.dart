import 'package:get/get.dart';
import 'package:true_budget/src/data/model/info_card.dart';
import 'package:true_budget/src/data/repository/info_card_repository.dart';

class AddInfoCarUseCase {
  final InfoCardRepository infoCardRepository = Get.find();

  Future<List<InfoCard>> fetchAll() async{
    return infoCardRepository.fetchAll();
  }
}
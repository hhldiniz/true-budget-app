import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:true_budget/src/data/model/card_type.dart';
import 'package:true_budget/src/data/model/category.dart';
import 'package:true_budget/src/presentation/controllers/add_info_card_controller.dart';
import 'package:true_budget/src/presentation/widget/button/primary_button.dart';

class AddInfoCard extends StatelessWidget {
  AddInfoCard({Key? key}) : super(key: key);

  final AddInfoCardController _addInfoCardController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Form(
              child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              const Text(
                "Customize the information you want to be shown in your new card",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                elevation: 8,
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Select the type of the card"),
                    ),
                    Obx(() {
                      return RadioListTile<CardType>(
                        value: CardType.spend,
                        groupValue:
                            _addInfoCardController.selectedCardType.value,
                        onChanged: (cardType) {
                          if (cardType != null) {
                            _addInfoCardController.selectedCardType.value =
                                cardType;
                          }
                        },
                        title: const Text("Spend"),
                      );
                    }),
                    Obx(() {
                      return RadioListTile<CardType>(
                        value: CardType.saving,
                        groupValue:
                            _addInfoCardController.selectedCardType.value,
                        onChanged: (cardType) {
                          if (cardType != null) {
                            _addInfoCardController.selectedCardType.value =
                                cardType;
                          }
                        },
                        title: const Text("Saving"),
                      );
                    }),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Card(
                        elevation: 8,
                        child: Column(
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child:
                                  Text("Select the category you want to track"),
                            ),
                            Obx(() {
                              return DropdownButton<Category>(
                                  value: _addInfoCardController
                                      .selectedCategory.value,
                                  items: [
                                    DropdownMenuItem(
                                      child: const Text("Groceries"),
                                      value: const Category("Groceries"),
                                      onTap: () {
                                        _addInfoCardController
                                                .selectedCategory.value =
                                            const Category("Groceries");
                                      },
                                    )
                                  ],
                                  onChanged: (category) {
                                    if (category != null) {
                                      _addInfoCardController
                                          .selectedCategory.value = category;
                                    }
                                  });
                            }),
                          ],
                        ),
                      ))
                ],
              )
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: PrimaryButton(() {
              Navigator.of(context).pop();
            }, "Finish"),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:true_budget/src/data/model/card_type.dart';
import 'package:true_budget/src/data/model/category.dart';

class AddInfoCard extends StatefulWidget {
  const AddInfoCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => AddInfoCardState();
}

class AddInfoCardState extends State<AddInfoCard> {
  CardType selectedCardType = CardType.spend;
  Category selectedCategory = const Category("Groceries");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
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
                RadioListTile<CardType>(
                  value: CardType.spend,
                  groupValue: selectedCardType,
                  onChanged: (cardType) {
                    setState(() {
                      if (cardType != null) {
                        selectedCardType = cardType;
                      }
                    });
                  },
                  title: const Text("Spend"),
                ),
                RadioListTile<CardType>(
                  value: CardType.saving,
                  groupValue: selectedCardType,
                  onChanged: (cardType) {
                    setState(() {
                      if (cardType != null) {
                        selectedCardType = cardType;
                      }
                    });
                  },
                  title: const Text("Saving"),
                )
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
                          child: Text("Select the category you want to track"),
                        ),
                        DropdownButton<Category>(
                            value: selectedCategory,
                            items: [
                              DropdownMenuItem(
                                child: const Text("Groceries"),
                                value: const Category("Groceries"),
                                onTap: () {
                                  setState(() {
                                    selectedCategory =
                                        const Category("Groceries");
                                  });
                                },
                              )
                            ],
                            onChanged: (category) {
                              if (category != null) selectedCategory = category;
                            })
                      ],
                    ),
                  ))
            ],
          )
        ],
      )),
    );
  }
}

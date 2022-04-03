import 'package:flutter/material.dart';
import 'package:true_budget/src/presentation/view/add_info_card.dart';
import 'package:true_budget/src/presentation/view/add_transaction.dart';
import 'package:true_budget/src/presentation/view/transactions.dart';

import 'financial_information_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("True Budget"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Transactions()));
              },
              icon: const Icon(Icons.history))
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddTransaction()));
        },
        label: const Text("Add transaction"),
        icon: const Icon(Icons.currency_exchange),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          const FinancialInformationCard(
              "This was how much you spent this month", 1000),
          const FinancialInformationCard(
              "This is your budget for the month", 10000),
          GestureDetector(
            child: const Card(
              elevation: 8,
              child: Icon(
                Icons.add,
                size: 128,
              ),
            ),
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const AddInfoCard()));
            },
          )
        ],
      ),
    );
  }
}

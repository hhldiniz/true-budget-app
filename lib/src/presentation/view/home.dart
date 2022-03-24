import 'package:flutter/material.dart';

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
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          FinancialInformationCard("This was how much you spent this month", 1000),
          FinancialInformationCard("This is your budget for the month", 10000),
        ],
      ),
    );
  }
}

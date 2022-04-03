import 'package:flutter/material.dart';

class Transactions extends StatefulWidget {
  const Transactions({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => TransactionsState();

}

class TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transaction History"),),
      body: Column(
        children: [

        ],
      ),
    );
  }

}
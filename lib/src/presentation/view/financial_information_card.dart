import 'package:flutter/material.dart';

class FinancialInformationCard extends StatelessWidget {
  final String _description;
  final double _value;

  const FinancialInformationCard(this._description, this._value, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$" + _value.toString(),
            style: const TextStyle(fontSize: 36),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(_description),
          )
        ],
      ),
    );
  }
}

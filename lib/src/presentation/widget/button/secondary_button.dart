import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final Function() _onPressed;
  final String _label;

  const SecondaryButton(this._onPressed, this._label, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _onPressed,
        child: Text(_label, style: const TextStyle(color: Colors.black),),
        style: ElevatedButton.styleFrom(
          side: BorderSide(color: Theme.of(context).primaryColor),
            elevation: 0,
            minimumSize: const Size(256, 64),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(64))),
            primary: Colors.transparent));
  }
}

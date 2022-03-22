import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Function() _onPressed;
  final String _label;

  const PrimaryButton(this._onPressed, this._label, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: _onPressed,
        child: Text(_label),
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(256, 64),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(64)))));
  }
}

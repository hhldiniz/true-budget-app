import 'package:flutter/material.dart';
import 'package:true_budget/src/presentation/widget/button/primary_button.dart';
import 'package:true_budget/src/presentation/widget/button/secondary_button.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SignupState();
}

class SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Form(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), label: Text("Username")),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Password")),
                  )),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Confirm Password")),
                  )),
            ],
          )),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Wrap(
              direction: Axis.vertical,
              spacing: 8,
              children: [
                PrimaryButton(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Account created!")));
                  Navigator.of(context).pop();
                }, "Confirm"),
                SecondaryButton(() {
                  Navigator.of(context).pop();
                }, "Back")
              ],
            ),
          )
        ],
      ),
    );
  }
}

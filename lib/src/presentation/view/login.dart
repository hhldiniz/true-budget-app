import 'package:flutter/material.dart';
import 'package:true_budget/src/presentation/view/signup.dart';
import 'package:true_budget/src/presentation/widget/button/primary_button.dart';

import '../widget/button/secondary_button.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text("True Budget", style: TextStyle(fontSize: 54),),
          Form(
              child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Username")),
                  )),
              const SizedBox(
                height: 8,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), label: Text("Password")),
                  )),
            ],
          )),
          Wrap(
            direction: Axis.vertical,
            spacing: 8,
            children: [
              PrimaryButton(() => {}, "Login"),
              SecondaryButton(() {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Signup()));
              }, "Signup")
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../comman/widget/cutom_textfiled.dart';
import '../../../constraints/global_variable.dart';

enum Auth {
  signin,
  signup,
}

class AuthScren extends StatefulWidget {
  static const String routName = "/auth-screen";

  @override
  State<AuthScren> createState() => _AuthScrenState();
}

class _AuthScrenState extends State<AuthScren> {
  Auth _auth = Auth
      .signup; // it is use for check whether user want to sign in of sing up
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailControllar = TextEditingController();
  final TextEditingController _passwordControllar = TextEditingController();
  final TextEditingController _nameControllar = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailControllar.dispose();
    _passwordControllar.dispose();
    _nameControllar.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.greyBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SafeArea(
                child: Text(
              "Welcome",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
            )),
            ListTile(
              title: const Text(
                "Create Account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  activeColor: GlobalVariable.secondaryColor,
                  value: Auth.signup,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
            if (_auth == Auth.signup)
              Container(
                padding: const EdgeInsets.all(8),
                color: GlobalVariable.backgroundColor,
                child: Form(
                  key: _signUpFormKey,
                  child: Column(
                    children: [
                      CustomTextField(
                          textEditingController: _emailControllar,
                          hintText: 'Name'),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          textEditingController: _emailControllar,
                          hintText: 'Email'),
                      const SizedBox(
                        height: 10,
                      ),
                      CustomTextField(
                          textEditingController: _emailControllar,
                          hintText: 'Password')
                    ],
                  ),
                ),
              ),
            ListTile(
              title: const Text(
                "Sign In",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Radio(
                  activeColor: GlobalVariable.secondaryColor,
                  value: Auth.signin,
                  groupValue: _auth,
                  onChanged: (Auth? val) {
                    setState(() {
                      _auth = val!;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

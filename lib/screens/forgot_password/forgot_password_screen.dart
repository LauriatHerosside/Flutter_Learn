import 'package:flutter/material.dart';

import 'components/body_forgot_password.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static String routeName = "/forgot_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Mot de passe oublier"),
        ),
        body: BodyForgotPassword());
  }
}

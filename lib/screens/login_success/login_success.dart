import 'package:flutter/material.dart';

import 'components/body_login_success.dart';

class LoginSuccessScreen extends StatelessWidget {
  static String routeName = "/login_success_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connexion reussie !"),
        leading: SizedBox(),
      ),
      body: BodyLoginSuccesScreen(),
    );
  }
}

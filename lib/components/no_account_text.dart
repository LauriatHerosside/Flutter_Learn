import 'package:flutter/material.dart';

import '../constant.dart';
import '../screens/forgot_password/forgot_password_screen.dart';
import '../size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Vous n'avez pas de compte ? ",
          style: TextStyle(fontSize: getProportionateScreenWidth(16)),
        ),
        GestureDetector(
          onTap: () => Navigator.popAndPushNamed(
              context, ForgotPasswordScreen.routeName),
          child: Text(
            "Créer  ",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(16),
                color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}

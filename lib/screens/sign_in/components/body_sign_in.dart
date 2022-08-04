import 'package:e_commerce/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce/screens/sign_in/components/sign_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../components/no_account_text.dart';
import '../../../components/social_card.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              Text(
                "Bienvenue Chez O'Miel",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                "Connection avec email & le mot de passe \n ou  continuer avec un reseau social",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.08,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(
                    icon: "assets/icons/google-icon.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/facebook-2.svg",
                    press: () {},
                  ),
                  SocialCard(
                    icon: "assets/icons/twitter.svg",
                    press: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(28),
              ),
              NoAccountText()
            ],
          ),
        ),
      ),
    );
  }
}

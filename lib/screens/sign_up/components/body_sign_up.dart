import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/sign_up/components/sign_up_form.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/social_card.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.02),
            Text(
              "Enregistrement ",
              style: headingStyle,
            ),
            Text(
              "Completer votre inscription \n on faire avec un resaau social",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.07),
            SignUpForm(),
            SizedBox(height: SizeConfig.screenHeight! * 0.07),
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
              height: getProportionateScreenHeight(20),
            ),
            Text(
              "Pour la création du compte de l’Utilisateur, \nla collecte des informations au moment de l’inscription sur le site est nécessaire et obligatoire.",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import 'complete_profile_form.dart';

class BodyCompleteProfile extends StatelessWidget {
  const BodyCompleteProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: SizeConfig.screenHeight! * 0.02,
            ),
            Text(
              "Completez votre profile",
              style: headingStyle,
            ),
            Text(
              "Completez les details liées \n à votre profile",
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.05,
            ),
            CompletProfilForm(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Text(
              "Pour la création du compte de l’Utilisateur, \nla collecte des informations au moment de l’inscription sur le site est nécessaire et obligatoire.",
              textAlign: TextAlign.center,
            )
          ]),
        ),
      ),
    );
  }
}

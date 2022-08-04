import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/custom_surfix_icon.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
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
            SignInForm()
          ],
        ),
      ),
    );
  }
}

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(children: [
          buildEmailFormField(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          buildPasswordFormField(),
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          DefaultButton(text: "Continue", press: () {})
        ]),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            labelText: "Mot de passe",
            hintText: "Entrez votre mot de passe",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Lock.svg",
            )));
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            labelText: "Email",
            hintText: "Entrez votre email",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Mail.svg",
            )));
  }
}

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/screens/home/home_screen.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

class BodyLoginSuccesScreen extends StatelessWidget {
  const BodyLoginSuccesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenWidth! * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight! * 0.4,
        ),
        SizedBox(
          height: SizeConfig.screenHeight! * 0.08,
        ),
        Text(
          "Connexion reussie !",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth! * 0.6,
            child: DefaultButton(
                text: "Retour",
                press: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName))),
        Spacer(),
      ],
    );
  }
}

import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import 'otp_form.dart';

class BodyOtp extends StatelessWidget {
  const BodyOtp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight! * 0.05,
              ),
              Text(
                "OTP Vérification",
                style: headingStyle,
              ),
              Text("Un code envoyé sur 078718..."),
              buildTimer(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.15,
              ),
              OtpForm(),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.1,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Renvoyer le code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Le code expire dans "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: Duration(seconds: 30),
          builder: (context, value, child) => Text(
            "00:${value?.toString()}",
            style: TextStyle(color: kPrimaryColor),
          ),
          onEnd: () {},
        )
      ],
    );
  }
}

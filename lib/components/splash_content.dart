import 'package:e_commerce/constant.dart';
import 'package:flutter/material.dart';

import '../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 3,
            child: Column(
              children: <Widget>[
                Spacer(),
                Text(
                  "O'Miel",
                  style: TextStyle(
                    fontSize: getProportionateScreenHeight(36),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text,
                  textAlign: TextAlign.center,
                ),
                Spacer(flex: 2),
                Image.asset(image, height: getProportionateScreenHeight(265))
              ],
            )),
        Expanded(flex: 1, child: SizedBox()),
      ],
    );
  }
}

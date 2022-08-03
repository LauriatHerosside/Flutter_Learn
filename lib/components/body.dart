import 'dart:ffi';

import 'package:e_commerce/components/splash_content.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import 'default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
  const Body({Key? key}) : super(key: key);
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {"text": "Bienvenue chez moi", "image": "assets/images/splash_1.png"},
    {
      "text": "Ici vous trouverez votre choix",
      "image": "assets/images/splash_2.png"
    },
    {"text": "Top c'est partir", "image": "assets/images/splash_3.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
                flex: 3,
                child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splashData.length,
                    itemBuilder: ((context, index) => SplashContent(
                          image: splashData[index]["image"].toString(),
                          text: splashData[index]["text"].toString(),
                        )))),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(20)),
                  child: Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) => buildDot(index),
                          )),
                      SizedBox(
                        height: 115,
                      ),
                      DefaultButton(text: "Continue", press: () {}),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

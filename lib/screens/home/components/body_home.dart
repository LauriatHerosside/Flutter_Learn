import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/home/components/search_field.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_header.dart';
import 'icon_btn_counter.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenWidth(20),
          ),
          HomeHearder(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          DiscountBanner()
        ],
      )),
    );
  }
}

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
          vertical: getProportionateScreenWidth(15)),
      width: double.infinity,
      // height: 90,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298), borderRadius: BorderRadius.circular(10)),
      child: Text.rich(TextSpan(
          text: "Supprise de la semaine \n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: "Reduction de 20% ",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ])),
    );
  }
}

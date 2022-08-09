import 'package:e_commerce/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_counter.dart';

class HomeHearder extends StatelessWidget {
  const HomeHearder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWitchCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {},
          ),
          IconBtnWitchCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}

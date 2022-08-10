import 'package:e_commerce/components/models/product.dart';
import 'package:e_commerce/constant.dart';
import 'package:e_commerce/screens/detail/details_screen.dart';
import 'package:e_commerce/screens/home/components/popular_product.dart';
import 'package:e_commerce/screens/home/components/search_field.dart';
import 'package:e_commerce/screens/home/components/section_title.dart';
import 'package:e_commerce/screens/home/components/special_offert.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'categories.dart';
import 'discount_banner.dart';
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
          DiscountBanner(),
          SizedBox(
            height: getProportionateScreenWidth(25),
          ),
          Categorie(),
          SizedBox(
            height: getProportionateScreenWidth(25),
          ),
          SpecialOffers(),
          SizedBox(
            height: getProportionateScreenWidth(30),
          ),
          SectionTitle(text: "Popular Product", press: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                    demoProducts.length,
                    (index) => ProductCard(
                          product: demoProducts[index],
                          press: () => Navigator.pushNamed(
                              context, DetailScreen.routeName,
                              arguments: ProductDetailsArguments(
                                  product: demoProducts[index])),
                        )),
                SizedBox(
                  width: getProportionateScreenWidth(30),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}

import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/models/product.dart';
import 'components/body_detail.dart';
import 'components/rounded_btn.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);
  static String routeName = '/detail_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: RoundedIconBtn(
              iconData: Icons.arrow_back_ios,
              press: () => Navigator.pop(context),
            ),
          )),
      body: BodyDetailsScreen(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}

import 'package:flutter/material.dart';

import 'components/body_otp_screen.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Vérification OTP")),
      body: BodyOtp(),
    );
  }
}

import 'package:e_commerce/screens/otp/otp_screen.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constant.dart';
import '../../../size_config.dart';

class CompletProfilForm extends StatefulWidget {
  const CompletProfilForm({Key? key}) : super(key: key);

  @override
  State<CompletProfilForm> createState() => _CompletProfilFormState();
}

class _CompletProfilFormState extends State<CompletProfilForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? adress;
  void addError({required String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({required String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buidFirstNameFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildPrenomFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildNumeroFormField(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          buildAdressFrormField(),
          FormError(errors: errors),
          SizedBox(
            height: getProportionateScreenHeight(40),
          ),
          DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.pushNamed(context, OtpScreen.routeName);
                }
                ;
              })
        ],
      ),
    );
  }

  TextFormField buildAdressFrormField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onSaved: ((newValue) => adress = newValue!),
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kAddressNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kAddressNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Adress",
            hintText: "Entrez votre adress",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Location point.svg",
            )));
  }

  TextFormField buildNumeroFormField() {
    return TextFormField(
        keyboardType: TextInputType.number,
        onSaved: ((newValue) => phoneNumber = newValue!),
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kPhoneNumberNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPhoneNumberNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Télephone",
            hintText: "Entrez votre numéro",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/Phone.svg",
            )));
  }

  TextFormField buildPrenomFormField() {
    return TextFormField(
        onSaved: ((newValue) => lastName = newValue!),
        decoration: InputDecoration(
            labelText: "Prénom",
            hintText: "Entrez votre prénom",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }

  TextFormField buidFirstNameFormField() {
    return TextFormField(
        onSaved: ((newValue) => firstName = newValue!),
        onChanged: (value) {
          if (value.isNotEmpty) {
            errors.remove(kNamelNullError);
          }
          return null;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kNamelNullError);
            return "";
          }
          return null;
        },
        decoration: InputDecoration(
            labelText: "Nom",
            hintText: "Entrez votre nom",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSurffixIcon(
              svgIcon: "assets/icons/User.svg",
            )));
  }
}

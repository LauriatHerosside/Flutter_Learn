import 'package:e_commerce/components/default_button.dart';
import 'package:e_commerce/components/form_error.dart';
import 'package:e_commerce/components/no_account_text.dart';
import 'package:e_commerce/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_surfix_icon.dart';
import '../../../constant.dart';

class BodyForgotPassword extends StatelessWidget {
  const BodyForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              Text(
                "Mot de passe oublier",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(20),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Veuillez rentrer votre email et \n vous receverez un lien sur votre compte",
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight! * 0.04,
              ),
              ForgotPasswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordForm> createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];

  @override
  Widget build(BuildContext context) {
    String email;
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: ((newValue) => email = newValue!),
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.remove(kEmailNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.remove(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                validator: (value) {
                  if (value!.isEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.add(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.add(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Entrez votre email",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: CustomSurffixIcon(
                      svgIcon: "assets/icons/Mail.svg",
                    ))),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            FormError(errors: errors),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) ;
                }),
            SizedBox(
              height: SizeConfig.screenHeight! * 0.1,
            ),
            NoAccountText()
          ],
        ));
  }
}

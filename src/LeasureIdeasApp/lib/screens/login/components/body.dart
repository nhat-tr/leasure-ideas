import 'package:LeasureIdeasApp/components/already_signed_up_check.dart';
import 'package:LeasureIdeasApp/components/rounded_button.dart';
import 'package:LeasureIdeasApp/components/rounded_text_field.dart';
import 'package:LeasureIdeasApp/screens/login/components/background.dart';
import 'package:LeasureIdeasApp/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('LOGIN',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          SizedBox(
            height: size.height * 0.04,
          ),
          SvgPicture.asset(
            'assets/icons/login.svg',
            width: size.width * 0.5,
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          RoundedTextField(
            prefixIcon: Icons.person,
            hintText: "Your email",
            inputType: TextInputType.emailAddress,
            onChange: (value) {
              print(value);
            },
          ),
          RoundedTextField(
            prefixIcon: Icons.lock,
            suffixIcon: Icons.visibility,
            hintText: "Your password",
            obscureText: true,
            onChange: (value) {
              print(value);
            },
          ),
          RoundedButton(title: 'LOGIN', onPress: () {}, isActive: true),
          AlreadySignedUpCheck()
        ],
      ),
    ));
  }
}

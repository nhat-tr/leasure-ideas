import 'package:LeasureIdeasApp/components/already_signed_up_check.dart';
import 'package:LeasureIdeasApp/components/rounded_button.dart';
import 'package:LeasureIdeasApp/components/rounded_text_field.dart';
import 'package:LeasureIdeasApp/constants.dart';
import 'package:LeasureIdeasApp/screens/signup/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              SvgPicture.asset(
                'assets/icons/signup.svg',
                width: size.width * 0.4,
              ),
              RoundedTextField(
                prefixIcon: Icons.person,
                hintText: "Your email",
              ),
              RoundedTextField(
                prefixIcon: Icons.lock,
                hintText: "Password",
                suffixIcon: Icons.visibility_off,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              RoundedButton(
                title: "SIGNUP",
                onPress: () {},
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              AlreadySignedUpCheck(
                login: true,
              ),
              Container(
                width: size.width * 0.8,
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                      color: Color(0xFFD9D9D9),
                      height: 1.5,
                    )),
                    Text("OR",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFD9D9D9))),
                    Expanded(
                        child: Divider(
                      color: Color(0xFFD9D9D9),
                      height: 1.5,
                    )),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(src: 'assets/icons/facebook.svg', onTap: () {}),
                  SocialIcon(src: 'assets/icons/twitter.svg', onTap: () {}),
                  SocialIcon(src: 'assets/icons/google-plus.svg', onTap: () {}),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String src;
  final Function onTap;
  const SocialIcon({
    Key key,
    @required this.src,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2, color: kPrimaryLightColor)),
        child: SvgPicture.asset(
          src,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}

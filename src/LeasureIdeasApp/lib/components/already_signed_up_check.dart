import 'package:LeasureIdeasApp/constants.dart';
import 'package:LeasureIdeasApp/screens/login/login_screen.dart';
import 'package:LeasureIdeasApp/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class AlreadySignedUpCheck extends StatelessWidget {
  final bool login;
  const AlreadySignedUpCheck({
    Key key,
    this.login = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          this.login ? "Already have an Account?" : "Don't have an Account?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                if (login) {
                  return LoginScreen();
                }
                return SignUpScreen();
              },
            ));
          },
          child: Text(
            this.login ? " Login" : " Sign up",
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}

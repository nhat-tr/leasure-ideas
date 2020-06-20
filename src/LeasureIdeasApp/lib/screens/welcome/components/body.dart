import 'package:LeasureIdeasApp/components/rounded_button.dart';
import 'package:LeasureIdeasApp/screens/login/login_screen.dart';
import 'package:LeasureIdeasApp/screens/signup/signup_screen.dart';
import 'package:LeasureIdeasApp/screens/welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            Text(
              "LEASURE IDEAS",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.04,
            ),
            SvgPicture.asset(
              'assets/icons/chat.svg',
              height: size.height * 0.4,
            ),
            SizedBox(height: size.height * 0.04),
            RoundedButton(
                title: 'LOGIN',
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ));
                },
                isActive: true),
            RoundedButton(
              title: 'SIGN UP',
              onPress: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ));
              },
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}

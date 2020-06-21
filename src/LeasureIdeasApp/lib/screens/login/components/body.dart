import 'package:LeasureIdeasApp/components/already_signed_up_check.dart';
import 'package:LeasureIdeasApp/screens/login/components/background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key key, @required this.child}) : super(key: key);

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
          this.child,
          AlreadySignedUpCheck()
        ],
      ),
    ));
  }
}

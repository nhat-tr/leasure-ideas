import 'package:LeasureIdeasApp/constants.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({Key key, @required this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        width: size.width * 0.8,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(29),
          // boxShadow: [
          //   BoxShadow(offset: Offset(0, 6), blurRadius: 5, color: Colors.grey)
          // ]
        ),
        child: this.child);
  }
}

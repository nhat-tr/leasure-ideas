import 'package:LeasureIdeasApp/constants.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final bool isActive;
  const RoundedButton(
      {Key key,
      @required this.title,
      @required this.onPress,
       this.isActive = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          onPressed: this.onPress,
          color: this.isActive ? kPrimaryColor : kPrimaryLightColor,
          child: Text(
            this.title,
            style: TextStyle(
                color: this.isActive ? kPrimaryLightColor : Colors.black),
          ),
        ),
      ),
    );
  }
}

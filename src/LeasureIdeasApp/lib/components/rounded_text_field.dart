import 'package:LeasureIdeasApp/components/text_field_container.dart';
import 'package:LeasureIdeasApp/constants.dart';
import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    Key key,
    this.obscureText = false,
    this.inputType = TextInputType.text,
    this.hintText = '',
    this.suffixIcon,
    this.controller,
    @required this.prefixIcon,
  }) : super(key: key);

  final TextEditingController controller;
  final bool obscureText;
  final TextInputType inputType;
  final IconData prefixIcon;
  final IconData suffixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: controller,
        obscureText: this.obscureText,
        keyboardType: this.inputType,
        style: TextStyle(color: kPrimaryColor),
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(
              this.prefixIcon,
              color: kPrimaryColor,
            ),
            suffixIcon: this.suffixIcon != null
                ? Icon(
                    this.suffixIcon,
                    color: kPrimaryColor,
                  )
                : null,
            hintText: this.hintText),
      ),
    );
  }
}

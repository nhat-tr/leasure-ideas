import 'package:LeasureIdeasApp/data_layer/user_repository.dart';
import 'package:LeasureIdeasApp/screens/welcome/components/body.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  final UserRepository userRepository;
  const WelcomeScreen({Key key, @required this.userRepository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        userRepository: userRepository,
      ),
    );
  }
}

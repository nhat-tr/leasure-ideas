import 'package:LeasureIdeasApp/bloc/authentication/authentication_bloc.dart';
import 'package:LeasureIdeasApp/bloc/login/login_bloc.dart';
import 'package:LeasureIdeasApp/data_layer/user_repository.dart';
import 'package:LeasureIdeasApp/screens/login/components/body.dart';
import 'package:LeasureIdeasApp/screens/login/components/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  final UserRepository userRepository;

  const LoginScreen({Key key, @required this.userRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) {
          return LoginBloc(
              userRepository: userRepository,
              authenticationBloc: BlocProvider.of<AuthenticationBloc>(context));
        },
        child: Body(child: LoginForm()),
      ),
    );
  }
}

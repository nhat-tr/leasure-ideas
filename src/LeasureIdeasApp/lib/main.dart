import 'package:LeasureIdeasApp/bloc/authentication/authentication_bloc.dart';
import 'package:LeasureIdeasApp/bloc/authentication/authentication_event.dart';
import 'package:LeasureIdeasApp/bloc/authentication/authentication_state.dart';
import 'package:LeasureIdeasApp/bloc/bloc_delegate.dart';
import 'package:LeasureIdeasApp/constants.dart';
import 'package:LeasureIdeasApp/data_layer/user_repository.dart';
import 'package:LeasureIdeasApp/screens/login/login_screen.dart';
import 'package:LeasureIdeasApp/screens/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  BlocSupervisor.delegate = AppBlocDelegate();
  final userRepository = UserRepository();

  runApp(BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  final userRepository = UserRepository();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Leasure Ideas ',
      theme: ThemeData(
        primarySwatch: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state is AuthenticationUninitialized) {
            return WelcomeScreen(
              userRepository: userRepository,
            );
          }
          if (state is AuthenticationAuthenticated) {
            return LoginScreen(
              userRepository: userRepository,
            );
          }
          if (state is AuthenticationLoading) {
            return Text("Loading");
          }
          return WelcomeScreen(
            userRepository: userRepository,
          );
        },
      ),
    );
  }
}

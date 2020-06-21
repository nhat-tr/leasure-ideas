import 'package:LeasureIdeasApp/bloc/login/login_bloc.dart';
import 'package:LeasureIdeasApp/bloc/login/login_event.dart';
import 'package:LeasureIdeasApp/bloc/login/login_state.dart';
import 'package:LeasureIdeasApp/components/rounded_button.dart';
import 'package:LeasureIdeasApp/components/rounded_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginFormState();
  }
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(LoginButtonPressed(
          username: _usernameController.text,
          password: _passwordController.text));
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text('${state.error}'),
            backgroundColor: Colors.red,
          ));
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedTextField(
                  prefixIcon: Icons.mail,
                  hintText: "Your email",
                  inputType: TextInputType.emailAddress,
                  controller: _usernameController,
                ),
                RoundedTextField(
                  prefixIcon: Icons.lock,
                  suffixIcon: Icons.visibility_off,
                  hintText: "Your password",
                  obscureText: true,
                  controller: _passwordController,
                ),
                RoundedButton(
                    title: 'LOGIN',
                    onPress: _onLoginButtonPressed,
                    isActive: true),
              ],
            ),
          );
        },
      ),
    );
  }
}

import 'package:LeasureIdeasApp/bloc/authentication/authentication_bloc.dart';
import 'package:LeasureIdeasApp/bloc/authentication/authentication_event.dart';
import 'package:LeasureIdeasApp/bloc/login/login_event.dart';
import 'package:LeasureIdeasApp/bloc/login/login_state.dart';
import 'package:LeasureIdeasApp/data_layer/user_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserRepository userRepository;
  final AuthenticationBloc authenticationBloc;

  LoginBloc({@required this.userRepository, @required this.authenticationBloc})
      : assert(userRepository != null);

  @override
  LoginState get initialState => LoginInitial();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressed) {
      yield LoginLoading();

      try {
        final token = await userRepository.authenticate(
            username: event.username, password: event.password);
        yield LoginInitial();
        authenticationBloc.add(LoggedIn(token: token));
      } catch (error) {
        yield LoginFailure(error: error.toString());
      }
    }
  }
}

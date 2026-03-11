

import 'package:flutter_application_2/features/auth/domain/entities/User.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<LoginEvent>(_onLogin);
    on<RegisterEvent>(_onRegister);
  }

  _onLogin(LoginEvent event, Emitter<AuthState> emit) {
    for (User user in state.users) {
      if (user.email == )
    }
  }

  _onRegister(RegisterEvent event, Emitter<AuthState> emit) {

  }
}

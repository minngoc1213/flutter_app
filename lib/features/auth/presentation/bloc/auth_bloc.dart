

import 'package:flutter_application_2/features/auth/domain/entities/user_entities.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_event.dart';
import 'package:flutter_application_2/features/auth/presentation/bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthState()) {
    on<LoginEvent>(_onLogin);
    on<RegisterEvent>(_onRegister);
  }

  void _onLogin(LoginEvent event, Emitter<AuthState> emit) {
    for (User user in state.users) {
      if (user.email == event.email && user.password == event.password) {
        emit(state.copyWith(status: .success));
      }
    }
    emit(state.copyWith(status: .failure));
  }

  _onRegister(RegisterEvent event, Emitter<AuthState> emit) {
    for (User user in state.users) {
      if (user.email == event.user.email) {
        emit(state.copyWith(status: .failure));
      }
    }
    state.users.add(event.user);
    emit(state.copyWith(status: .success));
  }
}

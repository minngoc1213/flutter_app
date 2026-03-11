import 'package:flutter_application_2/features/auth/domain/entities/user_entities.dart';

sealed class AuthEvent{}

class LoginEvent extends AuthEvent{
  LoginEvent({required this.email, required this.password});
  String email;
  String password;
}

class RegisterEvent extends AuthEvent{
  RegisterEvent(this.user);
  User user;
}

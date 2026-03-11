import 'package:flutter_application_2/features/auth/domain/entities/User.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default([]) List<User> users,
    User? user,
  }) = _AuthState;
}

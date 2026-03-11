import 'package:flutter_application_2/features/auth/domain/entities/user_entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {initial, success, failure}

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default([]) List<User> users,
    User? user,
    @Default(AuthStatus.initial) AuthStatus status,
  }) = _AuthState;
}

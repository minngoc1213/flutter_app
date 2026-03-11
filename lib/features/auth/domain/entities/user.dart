import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
sealed class User with _$User {
  const factory User({
    required String fullName,
    required String email,
    required String mobile,
    required String dob,
    required String password,
  }) = _User;
}
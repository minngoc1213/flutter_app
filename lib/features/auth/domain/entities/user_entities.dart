import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entities.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @Default('') String fullName,
     @Default('') String email,
     @Default('') String mobile,
     @Default('') String dob,
     @Default('') String password,
  }) = _User;
}
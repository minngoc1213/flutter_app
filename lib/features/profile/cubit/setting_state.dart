part of 'setting_cubit.dart';

@freezed
sealed class SettingState with _$SettingState {
  const factory SettingState({@Default(false) bool isDark}) = _SettingState;
}

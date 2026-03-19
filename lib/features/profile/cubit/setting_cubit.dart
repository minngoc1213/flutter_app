import 'package:bloc/bloc.dart';
import 'package:flutter_application_2/core/local_state/shared_preferences.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'setting_state.dart';
part 'setting_cubit.freezed.dart';

@singleton
class SettingCubit extends Cubit<SettingState> {
  SettingCubit() : super(SettingState());

  void toggleTheme() {
    emit(state.copyWith(isDark: !state.isDark));
    AppPrefs().setIsDark(state.isDark);
    print("SET isDark: ${state.isDark}");
  }

  Future<void> initData() async {
    final isDark = AppPrefs().getIsDark();
    emit(state.copyWith(isDark: isDark ?? false));
    print("GET isDark: $isDark");
  }
}

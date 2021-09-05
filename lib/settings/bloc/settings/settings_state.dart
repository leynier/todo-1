part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required String appVersion,
    required bool showFloatWidget,
    required bool turnOffWifi,
  }) = _SettingsState;
}
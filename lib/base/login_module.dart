// ignore_for_file: unused_element

import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:shared_core/data/auth/management_account/response_data.dart';
import 'package:shared_core/data/auth/user/user_dto/response_data.dart';

import 'enums.dart';
import 'language_model.dart';

part 'login_module.g.dart';

@JsonSerializable()
class LoginModuleResult {
  final bool success;
  final String? token;
  final String? deviceToken;
  final UserDto? userDto;
  String? error;

  // @JsonKey(toJson: _toJson, fromJson: _fromJson)
  final DateTime timestamp;
  final LoginResultType resultType;
  final String? cachedKey;
  @JsonKey(includeFromJson: false, includeToJson: false)
  LanguageModel? language;
  final int networkMode;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final ManagementAccounts? selectedManagementAccount;
  @JsonKey(includeFromJson: false, includeToJson: false)
  final List<ManagementAccounts>? managementAccount;

  LoginModuleResult({
    required this.success,
    this.token,
    this.deviceToken,
    this.userDto,
    this.error,
    required this.resultType,
    this.cachedKey,
    this.networkMode = 0,
    this.selectedManagementAccount,
    this.managementAccount,
  }) : timestamp = DateTime.now();

  LoginModuleResult.success({
    this.userDto,
    required this.token,
    required this.deviceToken,
    required this.networkMode,
    required this.language,
    this.cachedKey,
    required this.managementAccount,
    required this.timestamp,
    required this.success,
    required this.error,
    required this.selectedManagementAccount,
  }) : resultType = LoginResultType.success;

  // LoginModuleResult.loginBlocArgs({
  //
  //
  //   required this.deviceToken,
  //   required this.networkMode,
  //   required this.language,
  //
  //
  // }) : resultType = LoginResultType.success,
  //       success = false,
  //       error = null,
  //       userDto = null,
  //       cachedKey = null,
  //       token = null,
  //       selectedManagementAccount = null,
  //       managementAccount = null;

  LoginModuleResult.loginBlocArgs({
    required this.deviceToken,
    required this.networkMode,
    required this.language,
    required this.timestamp,
  }) : resultType = LoginResultType.success,
       success = false,
       error = null,
       userDto = null,
       cachedKey = null,
       token = null,
       selectedManagementAccount = null,
       managementAccount = null;

  LoginModuleResult.loginBlocArgsSimple({
    String deviceToken = '',
    int networkMode = 0,
    LanguageModel? language,
  }) : this.loginBlocArgs(
         deviceToken: deviceToken,
         networkMode: networkMode,
         language: language ?? LanguageModel(languageCode: 'fa'),
         timestamp: DateTime.now(),
       );

  LoginModuleResult.failure(String message)
    : success = false,
      userDto = null,
      token = null,
      deviceToken = null,
      networkMode = 0,
      timestamp = DateTime.now(),
      cachedKey = null,
      managementAccount = [],
      selectedManagementAccount = null,
      language = null,
      resultType = LoginResultType.error,
      error = message;

  static int _toJson(DateTime value) => value.millisecondsSinceEpoch;

  static DateTime _fromJson(dynamic value) {
    if (value is int) {
      return DateTime.fromMillisecondsSinceEpoch(value);
    } else if (value is String) {
      return DateTime.parse(value);
    }
    return DateTime.now();
  }

  factory LoginModuleResult.fromJson(Map<String, dynamic> json) =>
      _$LoginModuleResultFromJson(json);

  Map<String, dynamic> toJson() => _$LoginModuleResultToJson(this);

  LoginModuleResult copyWith(LoginModuleResult login) {
    return LoginModuleResult(
      success: success,
      token: token ?? login.token,
      userDto: userDto ?? login.userDto,
      deviceToken: deviceToken ?? login.deviceToken,
      error: error ?? login.error,
      selectedManagementAccount:
          selectedManagementAccount ?? login.selectedManagementAccount,
      managementAccount: managementAccount ?? login.managementAccount,
      cachedKey: cachedKey ?? login.cachedKey,
      resultType: resultType,
      networkMode: login.networkMode,
    );
  }

  Locale get locale {
    final code = language?.languageCode;

    switch (code) {
      case 'fa':
        return const Locale('fa');
      case 'en':
        return const Locale('en');
      default:
        return const Locale('fa'); // fallback امن
    }
  }
}

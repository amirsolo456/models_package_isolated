// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_module.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModuleResult _$LoginModuleResultFromJson(Map json) => LoginModuleResult(
  success: json['Success'] as bool,
  token: json['Token'] as String?,
  deviceToken: json['DeviceToken'] as String?,
  userDto: json['UserDto'] == null
      ? null
      : UserDto.fromJson(Map<String, dynamic>.from(json['UserDto'] as Map)),
  error: json['Error'] as String?,
  resultType: $enumDecode(_$LoginResultTypeEnumMap, json['ResultType']),
  cachedKey: json['CachedKey'] as String?,
  networkMode: (json['NetworkMode'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$LoginModuleResultToJson(LoginModuleResult instance) =>
    <String, dynamic>{
      'Success': instance.success,
      'Token': instance.token,
      'DeviceToken': instance.deviceToken,
      'UserDto': instance.userDto?.toJson(),
      'Error': instance.error,
      'ResultType': _$LoginResultTypeEnumMap[instance.resultType]!,
      'CachedKey': instance.cachedKey,
      'NetworkMode': instance.networkMode,
    };

const _$LoginResultTypeEnumMap = {
  LoginResultType.success: 'success',
  LoginResultType.error: 'error',
  LoginResultType.cancelled: 'cancelled',
  LoginResultType.networkError: 'networkError',
  LoginResultType.validationError: 'validationError',
  LoginResultType.managementAccountPick: 'managementAccountPick',
};

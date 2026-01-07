// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LanguageModel _$LanguageModelFromJson(Map json) => LanguageModel(
  id: (json['Id'] as num?)?.toInt() ?? 0,
  smallName: json['SmallName'] as String?,
  bigName: json['BigName'] as String?,
  completeName: json['CompleteName'] as String?,
  countryCode: json['CountryCode'] as String?,
  languageCode: json['LanguageCode'] as String?,
);

Map<String, dynamic> _$LanguageModelToJson(LanguageModel instance) =>
    <String, dynamic>{
      'Id': instance.id,
      'SmallName': instance.smallName,
      'BigName': instance.bigName,
      'CompleteName': instance.completeName,
      'CountryCode': instance.countryCode,
      'LanguageCode': instance.languageCode,
    };

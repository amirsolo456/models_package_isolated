import 'dart:ui';

import 'package:json_annotation/json_annotation.dart';
import 'package:shared_core/data/default/mng/select/language/response_data.dart';

part 'language_model.g.dart';

@JsonSerializable()
class LanguageModel extends Language {
  final int id;
  final String? smallName;
  final String? bigName;
  final String? completeName;
  final String? countryCode;
  final String? languageCode;

  LanguageModel({
    this.id = 0,
    this.smallName,
    this.bigName,
    this.completeName,
    this.countryCode,
    this.languageCode,
  }) : super(
         languageDesc: languageCode ?? ' ',
         inactive: false,
         createUserId: 0,
         code: languageCode ?? '0',
         languageId: 0,
         placeId: 0,
         createDate: DateTime.now(),
       );

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LanguageModelToJson(this);

  Language copyWith({
    int? id,
    String? smallName,
    String? bigName,
    String? completeName,
    String? countryCode,
    String? languageCode,
  }) {
    return LanguageModel(
      id: id ?? this.id,
      smallName: smallName ?? this.smallName,
      bigName: bigName ?? this.bigName,
      completeName: completeName ?? this.completeName,
      countryCode: countryCode ?? this.countryCode,
      languageCode: languageCode ?? this.languageCode,
    );
  }

  Locale get locale {
    switch (languageCode) {
      case 'fa':
        return const Locale('fa');
      case 'en':
        return const Locale('en');
      default:
        return const Locale('fa'); // fallback امن
    }
  }
}

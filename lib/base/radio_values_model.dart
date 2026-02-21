import 'package:shared_core/data/auth/toolbar/radio_values.dart';

class RadioValuesModel extends RadioValues {
  RadioValuesModel({
    required String caption,
    required Object? value,
    required String type
  }) : super(caption: caption, value: value,type:type );

  factory RadioValuesModel.fromRadioValues(RadioValues r) {
    return RadioValuesModel(
      caption: r.caption,
      value: r.value,
      type: r.type
    );
  }
}

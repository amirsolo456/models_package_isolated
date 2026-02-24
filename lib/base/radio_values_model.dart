import 'package:shared_core/data/auth/toolbar/radio_values.dart';

class RadioValuesModel extends RadioValues {
  RadioValuesModel({
    required super.caption,
    required super.value,
    required super.type
  });

  factory RadioValuesModel.fromRadioValues(RadioValues r) {
    return RadioValuesModel(
      caption: r.caption,
      value: r.value,
      type: r.type
    );
  }
}

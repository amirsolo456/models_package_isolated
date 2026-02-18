import 'package:shared_core/data/auth/toolbar/radio_values.dart';

class RadioValuesModel extends RadioValues {
  RadioValuesModel({
    required String caption,
    required Object? value,
  }) : super(caption: caption, value: value);

  factory RadioValuesModel.fromRadioValues(RadioValues r) {
    return RadioValuesModel(
      caption: r.caption,
      value: r.value,
    );
  }
}

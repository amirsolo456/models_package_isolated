import 'package:shared_core/data/auth/toolbar/field.dart';
import 'package:shared_core/data/auth/toolbar/radio_values.dart';
import 'package:shared_core/data/auth/toolbar/rule.dart';
import 'package:shared_core/data/auth/toolbar/select.dart';
import 'package:shared_core/data/auth/toolbar/select_endpoint.dart';

class FieldModel extends Field {
  FieldModel() : super();

  /// Creates a FieldModel by copying values from an existing [field].
  /// Note: lists are shallow-copied (new List instance, same element references).
  factory FieldModel.fromField(Field field) {
    return FieldModel()
      ..caption = field.caption
      ..name = field.name
      ..help = field.help
      ..type = field.type
      ..placeHolder = field.placeHolder
      ..defaultValue = field.defaultValue
      ..showId = field.showId
      // create new list instances (shallow copy of elements)
      ..radioValues = field.radioValues
      ..order = field.order
      ..selectEndpoint = field.selectEndpoint
      ..options = field.options
      ..rules = field.rules
      ..icon = field.icon
      ..idValue = field.idValue;
  }
}

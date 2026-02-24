import 'package:shared_core/data/base_data/base_data.dart';

class SelectResponseDataModel extends SelectResponseData {
  final bool isExpanded;

  SelectResponseDataModel({
    required super.id,
    super.title,
    super.displayTitle,
    List<SelectResponseDataModel>? subItems,
    this.isExpanded = false,
  }) : super(subItems: subItems);


  factory SelectResponseDataModel.fromSuper(SelectResponseData base, {bool isExpanded = false}) {
    return SelectResponseDataModel(
      id: base.id,
      title: base.title,
      displayTitle: base.displayTitle,
      subItems: base.subItems?.map((e) => SelectResponseDataModel.fromSuper(e)).toList(),
      isExpanded: isExpanded,
    );
  }
}

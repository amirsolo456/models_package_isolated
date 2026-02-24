import 'package:shared_core/data/base_data/base_data.dart';

class SelectResponseDataModel extends SelectResponseData {
  bool isExpanded;
  @override
  final int id;
  @override
  final String? title;
  @override
  final String? displayTitle;
  @override
  final List<SelectResponseDataModel>? subItems;
  SelectResponseDataModel(
      this.isExpanded, {
        required this.id,
        this.title,
        this.displayTitle,
        this.subItems,
      });
  // SelectResponseDataModel(this.isExpanded,
  //     {required this.id, this.title, this.displayTitle, this.subItems});
}

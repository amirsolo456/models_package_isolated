import 'generic_models.dart';

class ListGenericModel extends GenericModels {
  final int systemId;
  final int repoId;
  final int type;
  final String? title;

  ListGenericModel({
    required this.systemId,
    required this.repoId,
    required this.type,
    this.title,
  });
}

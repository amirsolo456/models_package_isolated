import 'package:models_package/base/generic_models.dart';

class  FormGenericModel extends GenericModels {
  final int systemId;
  final int repoId;

  final int type;
  final String? title;

  FormGenericModel({
    required this.systemId,
    required this.repoId,
    required this.type,
    this.title,
  });
}

import 'package:shared_core/data/default/response_data.dart';

class ApiSettings {
  final String baseUrl;
  final String loginUrl;
  final Defaults appDefaults;
  final Duration timeOut;

  ApiSettings({
    required this.baseUrl,
    required this.loginUrl,
    required this.appDefaults,
    required this.timeOut,
  });
}

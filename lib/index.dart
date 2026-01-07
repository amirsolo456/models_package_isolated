/*
// Export all base models
// export 'data/auth/management_account/dto.dart';
// ignore_for_file: unused_import

// ===== Usage note =====
import 'package:models_package/data/auth/login/dto.dart' as auth_login;
import 'package:models_package/data/auth/otp/dto.dart' as auth_otp;
import 'package:models_package/data/auth/tag/dto.dart' as auth_tag;
import 'package:models_package/data/auth/toolbar/dto.dart' as auth_toolbar;
import 'package:models_package/data/auth/user/dto.dart' as auth_user;
import 'package:models_package/data/auth/user/user_dto.dart' as auth_user_user;
// ===== Com DTOs =====
import 'package:models_package/data/com/person/dto.dart' as com_person;
// ===== Dashboard DTOs =====
import 'package:models_package/data/dashboard/dto.dart' as dashboard;
import 'package:models_package/data/default/com/select/currency/dto.dart'
    as def_select_currency;
import 'package:models_package/data/default/com/select/year/dto.dart'
    as def_select_year;
import 'package:models_package/data/default/debugger/dto.dart' as def_debugger;
// ===== Default DTOs =====
import 'package:models_package/data/default/dto.dart' as def_default;
import 'package:models_package/data/default/mng/select/language/dto.dart'
    as def_mng_select_language;
import 'package:models_package/data/default/mng/select/place/dto.dart'
    as def_mng_select_place;
import 'package:models_package/data/default/trh/select/cashier/dto.dart'
    as def_trh_select_cashier;
import 'package:models_package/data/default/trh/select/option/dto.dart'
    as def_trh_select_option;

export 'package:models_package/data/auth/menu/dto.dart'
    show Response
    show menuResponse, ResponseData
    show menuResponseData, Request
    show menuRequest;
export 'package:models_package/data/default/trh/select/option/dto.dart'
    show def_trh_select_option_ex;

export '../../shared_core/lib/base_request.dart';
export '../../shared_core/lib/base_response.dart';
export './data/auth/login/dto.dart' show LoginRequest;
export 'base/api_settings.dart';
export 'base/enums.dart';
export 'base/extensions.dart';
export 'base/history.dart';
export 'base/language.dart';
export 'base/language_model.dart';
export 'base/login_module.dart';
export 'base/opened.dart';
export 'base/operation_result.dart';
export 'base/question_button.dart';

// ===== Usage note =====
// If you prefer to avoid copy-pasting these imports into every file,
// create a small `my_dto_aliases.dart` inside your app (not inside this package)
// that imports the DTOs with `as` and then re-exports convenient wrapper
// constructors or factory helpers for the specific DTOs you use frequently.

// Example wrapper (in your app package):
// import 'package:models_package/data/auth/login/dto.dart' as auth_login;
// class LoginDtoFactory {
//   static auth_login.Request createLoginRequest(...) => auth_login.Request(...);
// }

// If you want, I can generate such wrapper typedefs or small factory wrappers
// for the DTOs you use most — بگو کدوم‌ها رو بیشتر استفاده می‌کنی و من می‌سازمشون.
*/

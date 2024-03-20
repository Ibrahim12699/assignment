import 'package:assignment/src/core/resource/strings_manager.dart';

class Validators {
  static String? validateEmail(String? s) {
    if (s == null || s.isEmpty) {
      return StringsManager.emailRequired;
    }

    return null;
  }

  static String? validateUsername(String? s) {
    if (s == null || s.isEmpty) {
      return StringsManager.usernameRequired;
    }

    return null;
  }

  static String? validatePassword(String? s) {
    if (s == null || s.isEmpty) {
      return StringsManager.passwordRequired;
    }
    return null;
  }

  static String? validateAmount(String? s) {
    if (s == null || s.isEmpty) {
      return StringsManager.amountRequired;
    }

    return null;
  }
}

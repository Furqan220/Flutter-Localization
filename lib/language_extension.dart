import 'package:multilanguage_app/language_controller.dart';

extension LanguageExtensions on Language {
  String toCode() {
    switch (this) {
      case Language.english:
        return 'en';
      case Language.spanish:
        return 'es';
      default:
        return 'en';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:multilanguage_app/language_extension.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Language { english, spanish }

class LanguageController with ChangeNotifier {
  Locale? _locale;
  Locale? get locale => _locale;

  void changeLanguage(Language type) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString('language_code', type.toCode());
    _locale = Locale(type.toCode());
    notifyListeners();
  }

  

}

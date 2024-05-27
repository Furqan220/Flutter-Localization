import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension BuildContextExtensions on BuildContext {
  String get helloWorld => AppLocalizations.of(this)?.helloWorld ?? '';
}

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:multilanguage_app/context_extension.dart';
import 'package:multilanguage_app/language_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(context.helloWorld),
        actions: [
          Consumer<LanguageController>(
            builder: (_, controller, c) {
              return PopupMenuButton<Language>(
                onSelected: (value) => controller.changeLanguage(value),
                itemBuilder: (context) => [
                  const PopupMenuItem<Language>(
                    value: Language.english,
                    child: Text('English'),
                  ),
                  const PopupMenuItem<Language>(
                    value: Language.spanish,
                    child: Text('Spanish'),
                  ),
                ],  
              );
            },
          ),
        ],
      ),
    );
  }
}

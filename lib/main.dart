import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:language/secomd.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    locale: Locale("ar"),
    supportedLocales: [
      Locale('en'), // English
      Locale('ar'), // Spanish
    ],
    localizationsDelegates: [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    localeResolutionCallback: (currentLang, supportLang) {
      if (currentLang != null) {
        for (Locale local in supportLang) {
          if (local.languageCode == currentLang.languageCode) {
            return currentLang;
          }
        }
      }
      return supportLang.first;
    },
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

  updateLanguage(Locale local) {}
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context).food),
      ),
      body: Center(
        child:
        Column(
          children: [
            ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                var locale = Locale('en');
                Get.updateLocale(locale);
                setState(() {});
                Navigator.push(context, MaterialPageRoute(builder: (context) => second(),));
              },
            ),
            ElevatedButton(
              child: Icon(Icons.add),
              onPressed: () {
                var locale = Locale('ar');
                Get.updateLocale(locale);
                setState(() {});
                Navigator.push(context, MaterialPageRoute(builder: (context) => second(),));
              },
            ),


          ],


        )

      ),
    );
  }
}

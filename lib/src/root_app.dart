import 'package:dzcoins/controllers/localization_controller.dart';
import 'package:dzcoins/core/color_app.dart';
import 'package:dzcoins/core/transalation_app.dart';
import 'package:dzcoins/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    LocalController localController = Get.put(LocalController());
    return GetMaterialApp(
      // Set the text direction to RTL
      translations: Translation(),
      locale: localController.currentLang,
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          elevation: 0,
          foregroundColor: backgroundColor,
        ),
      ),
      title: 'Dzcoins',

      supportedLocales: const [Locale('ar'), Locale('en')],

      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      home: const SplshScreen(),
    );
  }
}

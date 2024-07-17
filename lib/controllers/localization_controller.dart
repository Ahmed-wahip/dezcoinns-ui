import 'package:dzcoins/core/service.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LocalController extends GetxController {
  ServiceApp myservice = Get.find();
  Locale currentLang = const Locale("en");
  String? selcted;
  void changeLang(langcode) {
    currentLang = Locale(langcode);
    Locale locale = Locale(langcode);
    Get.updateLocale(locale);
    myservice.sharedPreferences.setString("ln", langcode);
  }

  @override
  void onInit() {
    String? lang = myservice.sharedPreferences.getString("ln") ?? 'en';

    selcted = lang;
    if (lang == "en") {
      currentLang = const Locale("en");
    } else if (lang == "ar") {
      currentLang = const Locale("ar");
    }
    super.onInit();
  }
}

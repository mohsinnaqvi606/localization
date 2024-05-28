import 'dart:ui';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'global_variables.dart';

class CommonFunctions {
  static selectLanguage() {
    GlobalVariables.selectedLangValue.value =
        GetStorage().read('language') ?? '';
    switch (GlobalVariables.selectedLangValue.value) {
      case 'en':
        Get.updateLocale(const Locale('en', 'US'));
        break;
      case 'ar':
        Get.updateLocale(const Locale('ar', 'SAR'));
        break;
      default:
        Get.updateLocale(const Locale('en', 'US'));
    }
  }

  static changeLanguage(String value) {
    GlobalVariables.selectedLangValue.value = value;
    GetStorage().write('language', value);
    selectLanguage();
  }
}

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

// 创建控制器类，用于切换语言
class MessagesController extends GetxController {
  void changeLanguage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}

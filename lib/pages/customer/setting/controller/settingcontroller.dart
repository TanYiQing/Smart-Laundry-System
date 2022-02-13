import 'dart:ui';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SettingController extends GetxController {
  var appData = GetStorage();

  void onReady() {
    super.onReady();
    changeLanguage();
  }

  var languageStorage = GetStorage();
  var language = "English".obs;

  void changeLanguage() {
    if (languageStorage.read("language") == "zh_Hans") {
      language.value = '简体中文';
      print("Chinese Here");
    } else if (languageStorage.read("language") == "my_Mls") {
      language.value = 'Malay';
      print("Malay Here");
    } else {
      language.value = 'English';
      print("English Here");
    }
  }

  void clickLanguage(Locale locale) {
    Get.updateLocale(locale);
    Get.back();
    print(locale);
    languageStorage.write("language", locale.toString());
    update();
  }

  void clickLogout() {
    appData.write("staySignedIn", false);
  }
}

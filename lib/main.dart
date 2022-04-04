import 'package:final_year_project/language/services/translationservice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:getxpractice/pages/theme/theme.dart';
import 'package:final_year_project/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

final appData = GetStorage();
void main() async {
  await GetStorage.init();
  runApp(OneSource());
}

class OneSource extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String language = appData.read("language") ?? '';
    return GetMaterialApp(
      title: 'OneSource Laundry',
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      getPages: AppPages.routes,
      unknownRoute: AppPages.notfound,
      locale: language == '' ? TranslationService.locale : Locale(language),
      fallbackLocale: TranslationService.fallbackLocale,
      translations: TranslationService(),
      // theme: Themes().lightTheme,
      // darkTheme: Themes().darkTheme,
    );
  }
}

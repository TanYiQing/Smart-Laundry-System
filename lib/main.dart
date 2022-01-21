import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:getxpractice/pages/theme/theme.dart';
// import 'package:getxpractice/pages/translation/translationservice.dart';
import 'package:final_year_project/routes/app_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'OneSource Laundry',
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      getPages: AppPages.routes,
      unknownRoute: AppPages.notfound,
      // locale: TranslationService.locale,
      // fallbackLocale: TranslationService.fallbackLocale,
      // translations: TranslationService(),
      // theme: Themes().lightTheme,
      // darkTheme: Themes().darkTheme,
    );
  }
}
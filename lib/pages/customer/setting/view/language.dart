import 'package:final_year_project/pages/customer/setting/controller/settingcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LanguagePage extends StatelessWidget {
  var languageStorage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Language'),
        ),
        body: GetBuilder<SettingController>(builder: (controller) {
          return ListView(
            children: [
              ListTile(
                onTap: () {
                  var locale = Locale('en', 'US');
                  controller.clickLanguage(locale);
                },
                title: Text("English"),
              ),
              ListTile(
                onTap: () {
                  var locale = Locale('zh', 'Hans');
                  controller.clickLanguage(locale);
                },
                title: Text("简体中文"),
              ),
              ListTile(
                onTap: () {
                  var locale = Locale('my', 'Mls');
                  controller.clickLanguage(locale);
                },
                title: Text("Malay"),
              ),
            ],
          );
        }));
  }
}

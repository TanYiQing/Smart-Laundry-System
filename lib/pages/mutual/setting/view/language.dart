import 'package:final_year_project/pages/mutual/setting/controller/setting_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

// ignore: must_be_immutable
class LanguagePage extends StatelessWidget {
  var languageStorage = GetStorage();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Language",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
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
                    var locale = Locale('hi', 'IN');
                    controller.clickLanguage(locale);
                  },
                  title: Text("Malay"),
                ),
              ],
            );
          })),
    );
  }
}

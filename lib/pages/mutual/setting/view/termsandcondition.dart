import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Terms and Conditions",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Container(
                child: Column(
              children: [
                Expanded(
                    child: WebView(
                  initialUrl:
                      'https://hubbuddies.com/270607/onesource/php/termsandcondition.php',
                )),
              ],
            )),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ErrorReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.yellow,
          title: Text("Error Report"),
        ),
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Name",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Phone",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Machine ID",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Machine Type",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "What error that you faced?",
                          border: InputBorder.none,
                          isDense: true),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      child: Card(
                          elevation: 10,
                          color: Colors.yellow,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(child: Text("Report")),
                          )),
                    )),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

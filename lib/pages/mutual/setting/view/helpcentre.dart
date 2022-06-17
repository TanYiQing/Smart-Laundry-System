import 'package:final_year_project/services/advanceTile/advanceTile.dart';
import 'package:final_year_project/services/advanceTile/advanced_tile.dart';
import 'package:flutter/material.dart';

class HelpCentrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Help Centre",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExpansionPanelList.radio(
                children: advancedTiles
                    .map((tile) => ExpansionPanelRadio(
                        value: tile.title,
                        canTapOnHeader: true,
                        headerBuilder: (context, isExpanded) => buildTile(tile),
                        body: Column(
                          children: tile.tiles.map(buildTile).toList(),
                        )))
                    .toList()),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Not solving your problem?",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "You can email us at onesourcelaundryapp@hubbuddies.com for more support."),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildTile(AdvancedTile tile) => ListTile(
        title: Text(
          tile.title,
          textAlign: TextAlign.justify,
        ),
      );
}

import 'package:final_year_project/pages/customer/addlocation/controller/addlocation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Location'),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              GetBuilder<AddLocationController>(builder: (_) {
                return Flexible(
                    flex: 7,
                    child: GoogleMap(
                      mapType: MapType.normal,
                      initialCameraPosition: _.shopPosition,
                      markers: _.markers.toSet(),
                      onMapCreated: (controller) {
                        _.completercontroller.complete(controller);
                      },
                      onTap: (newLatLng) {
                        _.loadAdd(newLatLng);
                      },
                    ));
              }),
              Divider(
                height: 5,
              ),
              Flexible(
                  flex: 3,
                  child: Container(
                      width: screenWidth,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 10),
                            Text("Please select your shipping address from map",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            Container(
                              width: screenWidth / 1.2,
                              child: Divider(),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: GetBuilder<AddLocationController>(
                                        builder: (controller) {
                                      return Column(
                                        children: [
                                          Container(
                                              height: 70,
                                              child: Text(controller.address)),
                                          Text("Delivery distance :" +
                                              controller.dis
                                                  .toStringAsFixed(2) +
                                              "km")
                                        ],
                                      );
                                    }),
                                  ),
                                  Container(
                                      height: 50,
                                      child:
                                          VerticalDivider(color: Colors.grey)),
                                  Expanded(
                                      flex: 4,
                                      child: Container(
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.orange[800],
                                              ),
                                              onPressed: () {
                                                // Navigator.pop(
                                                //     context, _delivery);
                                              },
                                              child: Text("Save"))))
                                ],
                              ),
                            ),
                          ],
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}

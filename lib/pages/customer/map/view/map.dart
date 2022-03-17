import 'package:final_year_project/pages/customer/map/controller/map_controller.dart';
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
        backgroundColor: Colors.transparent,
        title: Text(
          "Select Your Location",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              GetBuilder<MapController>(builder: (_) {
                return Flexible(
                    flex: 9,
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
                  flex: 2,
                  child: Container(
                      width: screenWidth,
                      decoration: new BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 6,
                                    child: GetBuilder<MapController>(
                                        builder: (controller) {
                                      return Container(
                                          height: 70,
                                          child: Text(controller.address));
                                    }),
                                  ),
                                  Container(
                                      height: 50,
                                      child:
                                          VerticalDivider(color: Colors.grey)),
                                  Expanded(
                                      flex: 4,
                                      child: Container(child:
                                          GetBuilder<MapController>(
                                              builder: (controller) {
                                        return ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: Colors.orange[800],
                                            ),
                                            onPressed: () {
                                              Get.toNamed("/addnewlocation",
                                                  arguments:
                                                      controller.gmaplocation);
                                              // Get.back(result: {
                                              //   "address": controller.address
                                              // });
                                              // Navigator.pop(
                                              //     context, _delivery);
                                            },
                                            child: Text("Save"));
                                      })))
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

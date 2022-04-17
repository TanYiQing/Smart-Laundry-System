import 'package:final_year_project/models/address.dart';
import 'package:final_year_project/pages/customer/location/controller/location_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AddressTile extends StatelessWidget {
  final Address address;
  AddressTile(this.address);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.lazyPut<LocationController>(() => LocationController());
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: double.infinity,
                  child:
                      Image.asset("assets/images/map.png", fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    address.addressType.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth / 20),
                  ),
                  Text(address.name.toString()),
                  Text(address.contact.toString()),
                  Text(""),
                  Text(address.address1.toString()),
                  (address.address2.toString() == "")
                      ? Text(address.address2.toString())
                      : Container(),
                  Text(address.zip.toString() + address.city.toString()),
                  Text(address.state.toString()),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.edit_location_alt_sharp,
                        color: Colors.blue,
                      )),
                  GestureDetector(
                      onTap: () {
                        Get.defaultDialog(
                          title: "Confirm Delete?",
                          content: Container(
                              height: 50,
                              child: Lottie.asset("assets/lottie/delete.json")),
                          cancel: GestureDetector(
                            onTap: () {
                              Get.back();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Cancel"),
                              ),
                            ),
                          ),
                          confirm: GetBuilder<LocationController>(
                            builder: (controller) {
                              return GestureDetector(
                                onTap: () {
                                  print("Delete");
                                  // print(this.address.addressID);
                                  controller.deleteAddress(this.address.addressID);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Delete"),
                                  ),
                                ),
                              );
                            }
                          ),
                        );
                      },
                      child: Icon(Icons.delete, color: Colors.red)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaundryNearByTile extends StatelessWidget {
  final Laundry laundry;
  final int index;
  LaundryNearByTile(this.laundry, this.index);
  final bottombarController = Get.put(BottomBarController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: CachedNetworkImage(
                        fit: BoxFit.fill,
                        imageUrl:
                            "https://hubbuddies.com/270607/onesource/images/laundry/${laundry.laundryID}/laundryshopimage.png"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        bottombarController
                            .checkLaundryName(laundry.laundryName.toString()),
                        style: TextStyle(fontSize: screenWidth / 15),
                      ),
                      Row(
                        children: [
                          Icon(Icons.person, color: Colors.blue),
                          Text(laundry.laundryOwnerName.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                          Text(laundry.laundryOwnerContact.toString()),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.red),
                          Text(laundry.laundryCity.toString()),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

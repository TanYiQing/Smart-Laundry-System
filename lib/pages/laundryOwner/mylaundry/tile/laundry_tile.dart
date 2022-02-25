import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundry/controller/mylaundry_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LaundryTile extends StatelessWidget {
  final Laundry laundry;
  LaundryTile(this.laundry);
  final mylaundryController = Get.put(MyLaundryController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
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
                        mylaundryController
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                (laundry.approve.toString() == "1") ? "Approve" : "Pending",
                style: TextStyle(
                    color: ((laundry.approve.toString() == "1")
                        ? Colors.green
                        : Colors.orange[700]),fontSize: screenWidth/22),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesTile extends StatelessWidget {
  final Laundry laundry;
  final int index;
  ServicesTile(this.laundry, this.index);
  final servicesController = Get.put(ServicesController());

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
                        servicesController
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
            GetBuilder<ServicesController>(builder: (controller) {
              return GestureDetector(
                onTap: () {
                  if (laundry.favourite.toString() == "unfavourite") {
                    controller.handlefavourite(
                        index, laundry.laundryID.toString());
                  } else {
                    controller.handlefavourite(
                        index, laundry.laundryID.toString());
                  }
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: (controller.favouriteList[index].toString() ==
                            "unfavourite")
                        ? Icon(Icons.favorite_border)
                        : Icon(
                            Icons.favorite_outlined,
                            color: Colors.red,
                          )),
              );
            })
          ],
        ),
      ),
    );
  }
}

import 'package:final_year_project/models/wallet.dart';
import 'package:final_year_project/pages/customer/bottombar/controller/bottombar_controller.dart';
import 'package:final_year_project/pages/laundryOwner/myorder/controller/myorder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletTile extends StatelessWidget {
  final Wallet wallet;

  WalletTile(this.wallet);
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              child: Stack(children: [
            Column(
              children: [
                Row(
                  children: [Text("Order ID #" + wallet.orderId.toString())],
                ),
                Row(
                  children: [
                    Text("Receipt ID #" + wallet.receiptId.toString())
                  ],
                ),
                Row(
                  children: [
                    Text("Laundry Name: " + wallet.laundryName.toString())
                  ],
                ),
                Row(
                  children: [
                    Text("Machine Type: " + wallet.machineType.toString())
                  ],
                ),
              ],
            ),
            Positioned(
                right: 0,
                child: Text(
                  "+RM" + wallet.totalPrice.toString(),
                  style: TextStyle(color: Colors.green,fontSize: screenWidth/20),
                ))
          ])),
        ),
      ),
    );
  }
}

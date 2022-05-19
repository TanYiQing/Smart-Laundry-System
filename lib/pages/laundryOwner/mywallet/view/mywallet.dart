import 'package:final_year_project/pages/laundryOwner/mywallet/controller/mywallet_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mywallet/tile/wallet_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyWalletPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "My Wallet",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: GetBuilder<MyWalletController>(builder: (controller) {
            return Column(
              children: [
                Container(
                  height: screenWidth / 3,
                  child: Card(
                    child: Column(
                      children: [
                        Center(
                          child: Text("RM" + controller.walletvalue.toString(),
                              style: TextStyle(
                                  fontSize: screenWidth / 10,
                                  fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: screenWidth / 3,
                          height: screenHeight / 25,
                          child: MaterialButton(
                            onPressed: () {
                              // Get.toNamed(
                              //     "/mybusinesslaundry");
                            },
                            child: Text(
                              "Withdraw".tr,
                              style: TextStyle(fontSize: screenWidth / 25),
                            ),
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment(-1.0, -4.0),
                                  end: Alignment(1.0, 4.0),
                                  colors: [
                                    Color.fromRGBO(0, 194, 203, 1),
                                    Colors.white
                                  ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Wallet History",
                          style: TextStyle(fontSize: screenWidth / 20)),
                    )),
                Container(
                    child: Flexible(
                        child: Center(
                            child: GridView.count(
                  crossAxisCount: 1,
                  childAspectRatio: ((screenWidth / screenHeight) / 0.135),
                  children:
                      List.generate(controller.walletList.length, (index) {
                    return GestureDetector(
                        onTap: () {},
                        child: WalletTile(controller.walletList[index]));
                  }),
                )))),
              ],
            );
          })),
    );
  }
}

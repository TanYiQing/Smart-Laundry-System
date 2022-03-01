import 'package:cached_network_image/cached_network_image.dart';
import 'package:final_year_project/pages/laundryOwner/addnewlaundry/controller/addnewlaundry_controller.dart';
import 'package:final_year_project/pages/laundryOwner/mylaundrydetails/controller/mylaundrydetails_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLaundryDetailsPageLaundry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: GetBuilder<MyLaundryDetailsController>(builder: (controller) {
            return Text(
              controller.laundry.laundryName,
              style: TextStyle(color: Colors.black),
            );
          }),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          actions: [
            GetBuilder<MyLaundryDetailsController>(builder: (controller) {
              return TextButton(
                  onPressed: () {
                    Get.toNamed("/managemachinelaundry",
                        arguments: controller.laundry);
                  },
                  child: Text("Manage Machine"));
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              GetBuilder<MyLaundryDetailsController>(builder: (controller) {
                return Stack(
                  children: [
                    Container(
                      height: screenWidth / 1.5,
                      width: double.infinity,
                      child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/laundryshopimage.png"),
                    ),
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                        child: GetBuilder<AddNewLaundryController>(
                            builder: (controller) {
                          return Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  controller.chooseCamera(1);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.camera_alt),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.chooseGallery(1);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.photo_library_rounded),
                                ),
                              )
                            ],
                          );
                        }),
                      ),
                    )
                  ],
                );
              }),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Laundry Owner's Details",
                  style: TextStyle(
                      fontSize: screenWidth / 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Laundry Owner\'s Name')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.ownernamecontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Laundry Owner\'s Contact')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.ownercontactcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {
                                  // _.clickLogin();
                                },
                                child: Container(
                                  child: Text(
                                    "Save",
                                    style:
                                        TextStyle(fontSize: screenWidth / 30),
                                  ),
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
                              width: screenWidth / 3.5,
                              height: screenHeight / 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Laundry Details",
                  style: TextStyle(
                      fontSize: screenWidth / 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Laundry Name')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.laundrynamecontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Laundry Address 1')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.address1controller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Laundry Address 2')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.address2controller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('ZIP')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.zipcontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('City')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.citycontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenWidth / 60,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text('State')),
                        Card(
                          shape: RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black, width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Container(
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: GetBuilder<MyLaundryDetailsController>(
                                  builder: (controller) {
                                return TextField(
                                  controller: controller.statecontroller,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10.0, left: 8.0, right: 8.0),
                            child: Container(
                              child: MaterialButton(
                                onPressed: () {
                                  // _.clickLogin();
                                },
                                child: Container(
                                  child: Text(
                                    "Save",
                                    style:
                                        TextStyle(fontSize: screenWidth / 30),
                                  ),
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
                              width: screenWidth / 3.5,
                              height: screenHeight / 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Support Documents",
                  style: TextStyle(
                      fontSize: screenWidth / 20, fontWeight: FontWeight.bold),
                ),
              ),
              GetBuilder<MyLaundryDetailsController>(builder: (controller) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Card(
                      elevation: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Photo of SSM License"),
                            GestureDetector(
                                onTap: () {
                                  choosePhoto(screenHeight, screenWidth, 2);
                                },
                                child: Container(
                                  height: screenHeight / 10,
                                  width: screenWidth / 5,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/ssmimage.png",
                                  ),
                                )),
                            SizedBox(
                              height: screenWidth / 60,
                            ),
                            Text("Photo of Business License"),
                            GestureDetector(
                                onTap: () {
                                  choosePhoto(screenHeight, screenWidth, 3);
                                },
                                child: Container(
                                  height: screenHeight / 10,
                                  width: screenWidth / 5,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/businesslicenseimage.png",
                                  ),
                                )),
                            SizedBox(
                              height: screenWidth / 60,
                            ),
                            Text("Photo of Bank Header"),
                            GestureDetector(
                                onTap: () {
                                  choosePhoto(screenHeight, screenWidth, 4);
                                },
                                child: Container(
                                  height: screenHeight / 10,
                                  width: screenWidth / 5,
                                  child: CachedNetworkImage(
                                    imageUrl:
                                        "https://hubbuddies.com/270607/onesource/images/laundry/${controller.laundry.laundryID}/bankheaderimage.png",
                                  ),
                                )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, left: 8.0, right: 8.0),
                                child: Container(
                                  child: MaterialButton(
                                    onPressed: () {
                                      // _.clickLogin();
                                    },
                                    child: Container(
                                      child: Text(
                                        "Save",
                                        style: TextStyle(
                                            fontSize: screenWidth / 30),
                                      ),
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10))),
                                  width: screenWidth / 3.5,
                                  height: screenHeight / 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }

  void choosePhoto(double screenHeight, double screenWidth, id) {
    print(id);
    Get.bottomSheet(Container(
      height: screenWidth / 4.5,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GetBuilder<AddNewLaundryController>(builder: (controller) {
            return GestureDetector(
              onTap: () {
                controller.chooseCamera(id);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.camera_alt,
                    color: Colors.blue,
                  ),
                  Text("Camera")
                ],
              ),
            );
          }),
          GetBuilder<AddNewLaundryController>(builder: (controller) {
            return GestureDetector(
              onTap: () {
                controller.chooseGallery(id);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.photo_library_rounded, color: Colors.purple),
                  Text("Gallery")
                ],
              ),
            );
          }),
          GetBuilder<AddNewLaundryController>(builder: (controller) {
            return GestureDetector(
              onTap: () {
                controller.chooseRemove(id);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                  Text("Remove")
                ],
              ),
            );
          }),
        ],
      ),
    ));
  }
}

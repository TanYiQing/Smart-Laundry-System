import 'package:final_year_project/pages/laundryOwner/addnewlaundry/controller/addnewlaundry_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewLaundryPageLaundry extends GetView<AddNewLaundryController> {
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
              "Add New Laundry",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: GetBuilder<AddNewLaundryController>(builder: (controller) {
            return Stepper(
              steps: getSteps(screenWidth, screenHeight),
              currentStep: controller.currentStep.value,
              onStepContinue: () {
                controller.clickContinue();
              },
              onStepCancel: () {
                controller.clickCancel();
              },
              onStepTapped: (index) {
                controller.tapStep(index);
              },
            );
          })),
    );
  }

  List<Step> getSteps(double screenWidth, double screenHeight) {
    return [
      Step(
        isActive: controller.currentStep.value >= 0,
        title: Text('Laundry Owner\'s Details'),
        content: Card(
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
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: GetBuilder<AddNewLaundryController>(
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
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: GetBuilder<AddNewLaundryController>(
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
              ],
            ),
          ),
        ),
      ),
      Step(
          isActive: controller.currentStep.value >= 1,
          title: Text("Laundry Details"),
          content: Card(
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                  Align(alignment: Alignment.centerLeft, child: Text('ZIP')),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                  Align(alignment: Alignment.centerLeft, child: Text('City')),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                  Align(alignment: Alignment.centerLeft, child: Text('State')),
                  Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: GetBuilder<AddNewLaundryController>(
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
                ],
              ),
            ),
          )),
      Step(
          title: Text("Support Document"),
          content: Container(
            width: double.infinity,
            child: Card(
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Photo of Laundry Shop"),
                    Container(
                      height: screenHeight / 10,
                      width: screenWidth / 5,
                      child: Card(
                        elevation: 5,
                        child: Icon(Icons.add_a_photo_outlined),
                      ),
                    ),SizedBox(
                  height: screenWidth / 60,
                ),
                    Text("Photo of SSM License"),
                    Container(
                      height: screenHeight / 10,
                      width: screenWidth / 5,
                      child: Card(
                        elevation: 5,
                        child: Icon(Icons.add_a_photo_outlined),
                      ),
                    ),SizedBox(
                  height: screenWidth / 60,
                ),
                    Text("Photo of Business License"),
                    Container(
                      height: screenHeight / 10,
                      width: screenWidth / 5,
                      child: Card(
                        elevation: 5,
                        child: Icon(Icons.add_a_photo_outlined),
                      ),
                    ),SizedBox(
                  height: screenWidth / 60,
                ),
                    Text("Photo of Bank Header"),
                    Container(
                      height: screenHeight / 10,
                      width: screenWidth / 5,
                      child: Card(
                        elevation: 5,
                        child: Icon(Icons.add_a_photo_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ))
    ];
  }
}

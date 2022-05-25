import 'package:final_year_project/pages/customer/trackorder/controller/trackorder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class TrackOrderPage extends GetView<TrackOrderController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return GetBuilder<TrackOrderController>(builder: (controller) {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Track Order",
              style: TextStyle(color: Colors.black),
            ),
            elevation: 0,
            iconTheme: IconThemeData(color: Colors.black),
          ),
          body: Stepper(
            steps: getSteps(screenWidth, screenHeight),
            currentStep: controller.currentStep.value,
            controlsBuilder: (BuildContext context, ControlsDetails details) {
              return Row(
                children: <Widget>[
                  Container(),
                  Container(),
                ],
              );
            },
          ));
    });
  }

  List<Step> getSteps(double screenWidth, double screenHeight) {
    return [
      Step(
        title: Text('Order Placed'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child:
                      GetBuilder<TrackOrderController>(builder: (controller) {
                    return Lottie.asset("assets/lottie/order-placed.json");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      Step(
        title: Text('Order Confirmed'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child:
                      GetBuilder<TrackOrderController>(builder: (controller) {
                    return Lottie.asset("assets/lottie/orderconfirmed.json");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      Step(
        title: Text('Order Processing'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child:
                      GetBuilder<TrackOrderController>(builder: (controller) {
                    return Lottie.asset("assets/lottie/orderprocessing.json");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
      Step(
        title: Text('Order Completed'),
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child:
                      GetBuilder<TrackOrderController>(builder: (controller) {
                    return Lottie.asset("assets/lottie/ordercompleted.json");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    ];
  }
}

import 'package:final_year_project/models/machine.dart';
import 'package:final_year_project/pages/laundryOwner/managemachine/controller/managemachine_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MachineTile extends StatelessWidget {
  final Machine machine;
  MachineTile(this.machine);
  final mylaundryController = Get.put(ManageMachineController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          elevation: 10,
          child:
              Image.asset((machine.machineType.toString() == "Washing Machine")
                  ? "assets/images/washingmachine.png"
                  : (machine.machineType.toString() == "Dry Washing Machine")
                      ? "assets/images/drywashingmachine.png"
                      : "assets/images/ironingmachine.png"),
        ),
        Expanded(
          child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              elevation: 10,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          machine.machineType.toString(),
                          style: TextStyle(
                              fontSize: screenWidth / 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.monetization_on_outlined,
                            color: Colors.green),
                        Text("RM" +
                            machine.price.toString() +
                            " " +
                            machine.calculationBase.toString()),
                      ],
                    ),
                  ),
                ],
              )),
        )
      ],
    );
  }
}

import 'package:final_year_project/models/machine.dart';
import 'package:flutter/material.dart';

class MachineTile extends StatelessWidget {
  final Machine machine;
  MachineTile(this.machine);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: screenWidth / 3.5,
            width: double.infinity,
            child: Image.asset((machine.machineType == "Washing Machine")
                ? "assets/images/washingmachine.png"
                : (machine.machineType == "Dry Washing Machine")
                    ? "assets/images/drywashingmachine.png"
                    : "assets/images/ironingmachine.png")),
        Text(
          machine.machineType.toString(),
          style: TextStyle(fontSize: screenWidth / 23),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("max." + machine.maximumWeight.toString() + "kg",
                      style: TextStyle(fontSize: screenWidth / 40)),
                  Text("min." + machine.minimumWeight.toString() + "kg",
                      style: TextStyle(fontSize: screenWidth / 40)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "RM" + machine.price.toString(),
                    style: TextStyle(
                        fontSize: screenWidth / 23,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    machine.calculationBase.toString(),
                    style: TextStyle(fontSize: screenWidth / 35),
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(
          (machine.available == "Available") ? "Available" : "Occupied Now",
          style: TextStyle(
              fontSize: screenWidth / 23,
              fontWeight: FontWeight.bold,
              color: (machine.available == "Available")
                  ? Colors.green
                  : Colors.red),
        ),
      ],
    );
  }
}

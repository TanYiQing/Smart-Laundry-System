import 'package:final_year_project/models/machine.dart';
import 'package:flutter/material.dart';

class MachineTile extends StatelessWidget {
  final Machine machine;
  MachineTile(this.machine);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        Column(
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
              padding: const EdgeInsets.only(top: 8.0),
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
            )
          ],
        ),
        Container(
            color: (machine.available == "Not Available")
                ? Color.fromRGBO(255, 255, 255, 0.7)
                : Colors.transparent,
            child: (machine.available == "Not Available")
                ? Center(
                    child: Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Not Available",
                        style: TextStyle(
                            fontSize: screenWidth / 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                    ),
                  ))
                : Container())
      ],
    );
  }
}

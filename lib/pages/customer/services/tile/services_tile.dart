import 'package:final_year_project/models/laundry.dart';
import 'package:final_year_project/pages/customer/services/controller/services_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ServicesTile extends StatelessWidget {
  final Laundry laundry;
  ServicesTile(this.laundry);
  final servicesController = Get.put(ServicesController());

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(color: Colors.black);
  }
}

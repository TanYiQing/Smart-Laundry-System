import 'package:final_year_project/pages/laundryOwner/businessreport/controller/businessreport_controller.dart';
import 'package:final_year_project/pages/laundryOwner/businessreport/controller/report_controller.dart';
import 'package:get/get.dart';

class BusinessReportBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BusinessReportController>(() => BusinessReportController());
    Get.lazyPut<ReportController>(() => ReportController());
  }
}

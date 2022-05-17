import 'package:final_year_project/pages/customer/errorreport/controller/errorreport_controller.dart';
import 'package:get/get.dart';

class ErrorReportBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ErrorReportController>(() => ErrorReportController());
  }
}

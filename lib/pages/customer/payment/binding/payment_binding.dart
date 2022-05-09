import 'package:final_year_project/pages/customer/payment/controller/payment_controller.dart';
import 'package:get/get.dart';

class PaymentBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentController>(() => PaymentController());
  }
}

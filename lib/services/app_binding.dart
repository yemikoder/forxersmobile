
import 'package:forxersmobile/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class AppBinding implements Bindings {

  @override
  void dependencies() async {
    Get.put(DashboardController());
  }
}
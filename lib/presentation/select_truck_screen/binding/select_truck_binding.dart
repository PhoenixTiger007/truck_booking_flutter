import '../controller/select_truck_controller.dart';
import 'package:get/get.dart';

class SelectTruckBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SelectTruckController());
  }
}

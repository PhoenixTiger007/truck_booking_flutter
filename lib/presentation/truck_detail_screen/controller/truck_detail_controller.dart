import 'package:truck_booking_app/core/app_export.dart';
import 'package:truck_booking_app/presentation/truck_detail_screen/models/truck_detail_model.dart';

class TruckDetailController extends GetxController {
  Rx<TruckDetailModel> truckDetailModelObj = TruckDetailModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

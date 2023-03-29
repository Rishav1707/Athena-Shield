import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/sos_screen/models/sos_model.dart';

class SosController extends GetxController {
  Rx<SosModel> sosModelObj = SosModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

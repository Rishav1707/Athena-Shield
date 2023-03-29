import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/tips_screen/models/tips_model.dart';

class TipsController extends GetxController {
  Rx<TipsModel> tipsModelObj = TipsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

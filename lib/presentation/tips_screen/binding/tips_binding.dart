import '../controller/tips_controller.dart';
import 'package:get/get.dart';

class TipsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TipsController());
  }
}

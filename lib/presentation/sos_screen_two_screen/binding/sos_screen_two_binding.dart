import '../controller/sos_screen_two_controller.dart';
import 'package:get/get.dart';

class SosScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SosScreenTwoController());
  }
}

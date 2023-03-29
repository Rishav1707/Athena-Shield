import '../controller/sos_screen_one_controller.dart';
import 'package:get/get.dart';

class SosScreenOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SosScreenOneController());
  }
}

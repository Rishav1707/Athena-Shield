import '../controller/sos_controller.dart';
import 'package:get/get.dart';

class SosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SosController());
  }
}

import '../controller/contacts_page_one_controller.dart';
import 'package:get/get.dart';

class ContactsPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactsPageOneController());
  }
}

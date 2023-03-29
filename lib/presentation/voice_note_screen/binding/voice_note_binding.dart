import '../controller/voice_note_controller.dart';
import 'package:get/get.dart';

class VoiceNoteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VoiceNoteController());
  }
}

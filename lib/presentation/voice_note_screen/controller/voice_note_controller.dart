import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/voice_note_screen/models/voice_note_model.dart';

class VoiceNoteController extends GetxController {
  Rx<VoiceNoteModel> voiceNoteModelObj = VoiceNoteModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

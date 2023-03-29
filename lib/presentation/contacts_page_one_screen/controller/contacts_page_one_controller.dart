import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/contacts_page_one_screen/models/contacts_page_one_model.dart';
import 'package:flutter/material.dart';

class ContactsPageOneController extends GetxController {
  TextEditingController frameController = TextEditingController();

  TextEditingController frameOneController = TextEditingController();

  TextEditingController frameTwoController = TextEditingController();

  TextEditingController frameThreeController = TextEditingController();

  TextEditingController frameFourController = TextEditingController();

  TextEditingController frameFiveController = TextEditingController();

  TextEditingController frameSixController = TextEditingController();

  TextEditingController frameSevenController = TextEditingController();

  TextEditingController frameEightController = TextEditingController();

  TextEditingController frameNineController = TextEditingController();

  TextEditingController frameTenController = TextEditingController();

  TextEditingController frameElevenController = TextEditingController();

  Rx<ContactsPageOneModel> contactsPageOneModelObj = ContactsPageOneModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frameController.dispose();
    frameOneController.dispose();
    frameTwoController.dispose();
    frameThreeController.dispose();
    frameFourController.dispose();
    frameFiveController.dispose();
    frameSixController.dispose();
    frameSevenController.dispose();
    frameEightController.dispose();
    frameNineController.dispose();
    frameTenController.dispose();
    frameElevenController.dispose();
  }
}

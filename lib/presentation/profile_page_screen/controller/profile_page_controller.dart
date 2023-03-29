import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/profile_page_screen/models/profile_page_model.dart';
import 'package:flutter/material.dart';

class ProfilePageController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  Rx<ProfilePageModel> profilePageModelObj = ProfilePageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
  }
}

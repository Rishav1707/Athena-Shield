import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/sign_up_page_screen/models/sign_up_page_model.dart';
import 'package:flutter/material.dart';

class SignUpPageController extends GetxController {
  TextEditingController enternameController = TextEditingController();

  TextEditingController enteremailController = TextEditingController();

  TextEditingController enterphoneController = TextEditingController();

  TextEditingController enterpasswordController = TextEditingController();

  Rx<SignUpPageModel> signUpPageModelObj = SignUpPageModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    enternameController.dispose();
    enteremailController.dispose();
    enterphoneController.dispose();
    enterpasswordController.dispose();
  }
}

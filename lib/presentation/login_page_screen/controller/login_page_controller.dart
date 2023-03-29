import 'package:women_app/core/app_export.dart';
import 'package:women_app/presentation/login_page_screen/models/login_page_model.dart';
import 'package:flutter/material.dart';

class LoginPageController extends GetxController {
  TextEditingController enteremailphonenoController = TextEditingController();

  TextEditingController enterpasswordController = TextEditingController();

  Rx<LoginPageModel> loginPageModelObj = LoginPageModel().obs;

  @override
  void onReady() {
    super.onReady();
    // Future.delayed(const Duration(milliseconds: 3000), () {
    //   Get.offNamed(AppRoutes.homePageOneScreen);
    // });
  AppRoutes.homePageOneScreen;
  }

  @override
  void onClose() {
    super.onClose();
    enteremailphonenoController.dispose();
    enterpasswordController.dispose();
  }
}

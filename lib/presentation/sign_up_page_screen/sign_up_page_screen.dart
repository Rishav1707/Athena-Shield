import 'controller/sign_up_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/core/utils/validation_functions.dart';
import 'package:women_app/widgets/custom_button.dart';
import 'package:women_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpPageScreen extends GetWidget<SignUpPageController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 50, right: 50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(154),
                              width: getHorizontalSize(250),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            decoration: AppDecoration
                                                .txtOutlineBlack9003f,
                                            child: Text("lbl_sign_up2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtLeelawadeeUI32))),
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgAthenashieldremovebgpreview,
                                        height: getVerticalSize(112),
                                        width: getHorizontalSize(250),
                                        alignment: Alignment.topCenter)
                                  ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.enternameController,
                              hintText: "lbl_enter_your_name".tr,
                              margin: getMargin(top: 29),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.enteremailController,
                              hintText: "msg_enter_your_e_mail2".tr,
                              margin: getMargin(top: 16),
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.enterphoneController,
                              hintText: "msg_enter_your_phone".tr,
                              margin: getMargin(top: 14),
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.enterpasswordController,
                              hintText: "msg_enter_your_password".tr,
                              margin: getMargin(top: 16),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: true),
                          CustomButton(
                              height: getVerticalSize(42),
                              width: getHorizontalSize(120),
                              text: "lbl_sign_up3".tr,
                              margin: getMargin(top: 33),
                              onTap: (){
                                print('Name = ${controller.enternameController.text.toString()}');
                                print('Email = ${controller.enteremailController.text.toString()}');
                                print('PhoneNo = ${controller.enterphoneController.text.toString()}');
                                print('Password = ${controller.enterpasswordController.text.toString()}');
                                return onTapSignup();

                              }),
                          Padding(
                              padding: getPadding(
                                  left: 37, top: 40, right: 39, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: Text("msg_already_a_member".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLeelawadeeUI16)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtLogin();
                                        },
                                        child: Container(
                                            margin: getMargin(left: 7),
                                            decoration: AppDecoration
                                                .txtOutlineBlack9003f,
                                            child: Text("lbl_login2".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtLeelawadeeUI16BlueA700
                                                    .copyWith(
                                                        decoration:
                                                            TextDecoration
                                                                .underline))))
                                  ]))
                        ])))));
  }

  onTapSignup() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }

  onTapTxtLogin() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }
}

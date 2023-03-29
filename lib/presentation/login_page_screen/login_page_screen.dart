import 'controller/login_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/core/utils/validation_functions.dart';
import 'package:women_app/widgets/custom_button.dart';
import 'package:women_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LoginPageScreen extends GetWidget<LoginPageController> {
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
                          CustomImageView(
                              imagePath:
                                  ImageConstant.imgAthenashieldremovebgpreview,
                              height: getVerticalSize(112),
                              width: getHorizontalSize(250)),
                          Container(
                              margin: getMargin(top: 10),
                              decoration: AppDecoration.txtOutlineBlack9003f,
                              child: Text("lbl_login".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: AppStyle.txtLeelawadeeUI32)),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller:
                                  controller.enteremailphonenoController,
                              hintText: "msg_enter_your_e_mail".tr,
                              margin: getMargin(top: 40),
                              padding: TextFormFieldPadding.PaddingT16,
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
                              controller: controller.enterpasswordController,
                              hintText: "msg_enter_your_password".tr,
                              margin: getMargin(top: 28),
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
                              width: getHorizontalSize(102),
                              text: "lbl_login2".tr,
                              margin: getMargin(top: 35),
                              onTap: (){
                                print('UserName =  ${controller.enteremailphonenoController.text.toString()}');
                                print('PassWord = ${controller.enterpasswordController.text.toString()}');

                                return onTapLoginOne();
                              }),
                          Padding(
                              padding: getPadding(top: 58, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: Text("lbl_new_to_the_app".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtLeelawadeeUI16)),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignup();
                                        },
                                        child: Container(
                                            margin: getMargin(left: 6),
                                            decoration: AppDecoration
                                                .txtOutlineBlack9003f,
                                            child: Text("lbl_sign_up".tr,
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

  onTapLoginOne() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }

  onTapTxtSignup() {
    Get.toNamed(AppRoutes.signUpPageScreen);
  }
}

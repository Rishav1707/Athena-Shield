import 'controller/profile_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/core/utils/validation_functions.dart';
import 'package:women_app/widgets/custom_button.dart';
import 'package:women_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ProfilePageScreen extends GetWidget<ProfilePageController> {
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
                    padding: getPadding(left: 21, right: 21),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(right: 34),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgReply,
                                            height: getVerticalSize(21),
                                            width: getHorizontalSize(24),
                                            margin:
                                                getMargin(top: 22, bottom: 109),
                                            onTap: () {
                                              onTapImgReply();
                                            }),
                                        Container(
                                            height: getVerticalSize(152),
                                            width: getHorizontalSize(250),
                                            margin: getMargin(left: 10),
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Container(
                                                          margin: getMargin(
                                                              left: 60),
                                                          decoration: AppDecoration
                                                              .txtOutlineBlack9003f,
                                                          child: Text(
                                                              "lbl_profile".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtLeelawadeeUI32))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgAthenashieldremovebgpreview,
                                                      height:
                                                          getVerticalSize(112),
                                                      width: getHorizontalSize(
                                                          250),
                                                      alignment:
                                                          Alignment.topCenter)
                                                ]))
                                      ]))),
                          Container(
                              height: getVerticalSize(103),
                              width: getHorizontalSize(111),
                              margin: getMargin(top: 21),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgWomanavatar1,
                                        height: getVerticalSize(97),
                                        width: getHorizontalSize(107),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(36)),
                                        alignment: Alignment.topLeft),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgEditicon1,
                                        height: getVerticalSize(20),
                                        width: getHorizontalSize(17),
                                        alignment: Alignment.bottomRight)
                                  ])),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.nameController,
                              hintText: "lbl_enter_your_name".tr,
                              margin: getMargin(left: 29, top: 30, right: 29),
                              validator: (value) {
                                if (!isText(value)) {
                                  return "Please enter valid text";
                                }
                                return null;
                              }),
                          CustomTextFormField(
                              focusNode: FocusNode(),
                              controller: controller.emailController,
                              hintText: "msg_enter_your_e_mail2".tr,
                              margin: getMargin(left: 29, top: 25, right: 29),
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
                              controller: controller.phoneController,
                              hintText: "msg_enter_your_phone".tr,
                              margin: getMargin(
                                  left: 29, top: 27, right: 29, bottom: 5),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.phone,
                              validator: (value) {
                                if (!isValidPhone(value)) {
                                  return "Please enter valid phone number";
                                }
                                return null;
                              })
                        ]))),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(42),
                width: getHorizontalSize(121),
                text: "lbl_log_out".tr,
                margin: getMargin(left: 120, right: 119, bottom: 51),
                variant: ButtonVariant.OutlinePink400_1,
                onTap: onTapLogout)));
  }

  onTapImgReply() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }

  onTapLogout() {
    Get.toNamed(AppRoutes.loginPageScreen);
  }
}

import 'controller/help_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';

class HelpScreen extends GetWidget<HelpController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(112),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(21),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgReply,
                    margin: getMargin(left: 16, top: 21, bottom: 70),
                    onTap: onTapReply),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 5, bottom: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("lbl_help".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLeelawadeeUI32)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 19),
                              padding: getPadding(all: 10),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(336),
                                        margin: getMargin(top: 5),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_location".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text: "msg_you_can_access".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 4),
                              padding: getPadding(
                                  left: 10, top: 8, right: 10, bottom: 8),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(336),
                                        margin: getMargin(bottom: 9),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_sos".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      "msg_you_can_access2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 4),
                              padding: getPadding(all: 10),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(336),
                                        margin: getMargin(top: 5),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_chat_box".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      "msg_you_can_access3".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Leelawadee UI',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 4),
                              padding: getPadding(
                                  left: 10, top: 12, right: 10, bottom: 12),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(336),
                                        margin: getMargin(top: 1),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_contacts".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      "msg_you_can_access4".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 4),
                              padding: getPadding(
                                  left: 10, top: 12, right: 10, bottom: 12),
                              decoration: AppDecoration.outlineBlack9003f
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder8),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(336),
                                        margin: getMargin(bottom: 1),
                                        decoration:
                                            AppDecoration.txtOutlineBlack9003f,
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_tips".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      decoration: TextDecoration
                                                          .underline)),
                                              TextSpan(
                                                  text:
                                                      "msg_you_can_access5".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400)),
                                              TextSpan(
                                                  text:
                                                      "msg_provides_you_information"
                                                          .tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .whiteA700,
                                                      fontSize: getFontSize(12),
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ])))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(bottom: 13),
                padding: getPadding(left: 10, top: 11, right: 10, bottom: 11),
                decoration: AppDecoration.outlineBlack9003f
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          width: getHorizontalSize(336),
                          margin: getMargin(top: 3),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_change_password".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(14),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400,
                                        decoration: TextDecoration.underline)),
                                TextSpan(
                                    text: "msg_you_can_go_to".tr,
                                    style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(12),
                                        fontFamily: 'Inter',
                                        fontWeight: FontWeight.w400))
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  onTapReply() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}

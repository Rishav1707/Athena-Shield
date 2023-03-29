import 'controller/sos_screen_two_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';

class SosScreenTwoScreen extends GetWidget<SosScreenTwoController> {
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
                    onTap: onTapReply1),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 109, top: 5, right: 109, bottom: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 36),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("lbl_sos2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLeelawadeeUI32)),
                      Container(
                          height: getVerticalSize(162),
                          width: getHorizontalSize(140),
                          margin: getMargin(top: 34),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGuardian,
                                    height: getVerticalSize(137),
                                    width: getHorizontalSize(140),
                                    alignment: Alignment.topCenter,
                                    onTap: () {
                                      onTapImgGuardian();
                                    }),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("lbl_gaurdian".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterRegular24))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapStackgroup286();
                          },
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(left: 1, top: 55),
                              color: ColorConstant.deepPurple100,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder8),
                              child: Container(
                                  height: getVerticalSize(128),
                                  width: getHorizontalSize(140),
                                  padding: getPadding(
                                      left: 12, top: 6, right: 12, bottom: 6),
                                  decoration: AppDecoration.fillDeeppurple100
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgGroup286,
                                        height: getVerticalSize(104),
                                        width: getHorizontalSize(105),
                                        alignment: Alignment.bottomLeft)
                                  ])))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 7, bottom: 5),
                              child: Text("lbl_police".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtInterRegular24)))
                    ]))));
  }

  onTapImgGuardian() {
    Get.toNamed(AppRoutes.sosScreen);
  }

  onTapStackgroup286() {
    Get.toNamed(AppRoutes.sosScreenOneScreen);
  }

  onTapReply1() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}

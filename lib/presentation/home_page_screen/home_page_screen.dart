import 'package:shake/shake.dart';

import '../sos_screen_two_screen/sos_screen_two_screen.dart';
import 'controller/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';

class HomePageScreen extends GetWidget<HomePageController> {

  @override
  Widget build(BuildContext context) {
    // detection(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 14,
            right: 14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    312,
                  ),
                  width: getHorizontalSize(
                    291,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: getMargin(
                            left: 12,
                            top: 116,
                          ),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text(
                            "msg_welcome_username".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtLeelawadeeUI24,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            left: 55,
                          ),
                          color: ColorConstant.redA700,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.circleBorder70,
                          ),
                          child: Container(
                            height: getSize(
                              140,
                            ),
                            width: getSize(
                              140,
                            ),
                            padding: getPadding(
                              left: 19,
                              top: 18,
                              right: 19,
                              bottom: 18,
                            ),
                            decoration: AppDecoration.fillRedA700.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder70,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLightbulb,
                                  height: getSize(
                                    100,
                                  ),
                                  width: getSize(
                                    100,
                                  ),
                                  alignment: Alignment.topCenter,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        svgPath: ImageConstant.imgMenu,
                        height: getVerticalSize(
                          25,
                        ),
                        width: getHorizontalSize(
                          30,
                        ),
                        alignment: Alignment.topRight,
                        margin: getMargin(
                          top: 16,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgAthenashieldremovebgpreview,
                        height: getVerticalSize(
                          112,
                        ),
                        width: getHorizontalSize(
                          250,
                        ),
                        alignment: Alignment.topLeft,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: getMargin(
                            top: 37,
                            right: 27,
                          ),
                          padding: getPadding(
                            top: 9,
                            bottom: 9,
                          ),
                          decoration: AppDecoration.outlineWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: getPadding(
                                    top: 6,
                                    right: 31,
                                  ),
                                  child: Text(
                                    "lbl_my_profile".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtLeelawadeeUIBold20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 7,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    168,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 12,
                                ),
                                child: Text(
                                  "lbl_my_contacts".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLeelawadeeUIBold20,
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 9,
                                ),
                                child: SizedBox(
                                  width: getHorizontalSize(
                                    168,
                                  ),
                                  child: Divider(
                                    height: getVerticalSize(
                                      1,
                                    ),
                                    thickness: getVerticalSize(
                                      1,
                                    ),
                                    color: ColorConstant.whiteA700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 13,
                                ),
                                child: Text(
                                  "lbl_help2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtLeelawadeeUIBold20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 37,
                  top: 25,
                  right: 51,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: AppDecoration.outlineBlack9003f1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgLocation,
                            height: getVerticalSize(
                              64,
                            ),
                            width: getHorizontalSize(
                              53,
                            ),
                            margin: getMargin(
                              left: 18,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Text(
                              "lbl_location2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: getMargin(
                        bottom: 1,
                      ),
                      decoration: AppDecoration.outlineBlack9003f1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgMicrophone,
                            height: getVerticalSize(
                              62,
                            ),
                            width: getHorizontalSize(
                              47,
                            ),
                            margin: getMargin(
                              left: 4,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 9,
                            ),
                            child: Text(
                              "lbl_voice".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtInterRegular24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 49,
                    top: 35,
                    right: 47,
                    bottom: 5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: getMargin(
                          top: 21,
                        ),
                        decoration: AppDecoration.outlineBlack9003f1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgQuestion,
                              height: getSize(
                                71,
                              ),
                              width: getSize(
                                71,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 2,
                              ),
                              child: Text(
                                "lbl_help2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          bottom: 1,
                        ),
                        decoration: AppDecoration.outlineBlack9003f1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLightbulbPink400,
                              height: getVerticalSize(
                                82,
                              ),
                              width: getHorizontalSize(
                                70,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 11,
                              ),
                              child: Text(
                                "lbl_tips2".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtInterRegular24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void detection() {
  ShakeDetector detector = ShakeDetector.waitForStart(
      onPhoneShake: () {
        print('Phone Shaked');
        Get.toNamed(AppRoutes.sosScreenOneScreen);
      }
  );
  detector.startListening();
}
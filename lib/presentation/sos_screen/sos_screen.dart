import 'controller/sos_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';

class SosScreen extends GetWidget<SosController> {
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
                    onTap: onTapReply3),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 41, top: 5, right: 41, bottom: 5),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          margin: getMargin(left: 104),
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("lbl_sos2".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLeelawadeeUI32)),
                      Container(
                          height: getVerticalSize(346),
                          width: getHorizontalSize(270),
                          margin: getMargin(left: 8, top: 34),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgGuardian,
                                    height: getVerticalSize(137),
                                    width: getHorizontalSize(140),
                                    alignment: Alignment.topLeft,
                                    margin: getMargin(left: 60)),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.deepPurple100,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder8),
                                        child: Container(
                                            height: getVerticalSize(128),
                                            width: getHorizontalSize(140),
                                            padding: getPadding(
                                                left: 12,
                                                top: 6,
                                                right: 12,
                                                bottom: 6),
                                            decoration: AppDecoration
                                                .fillDeeppurple100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder8),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgGroup286,
                                                  height: getVerticalSize(104),
                                                  width: getHorizontalSize(105),
                                                  alignment:
                                                      Alignment.bottomLeft)
                                            ])))),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                        padding: getPadding(top: 132),
                                        child: Text("lbl_gaurdian".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular24))),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        height: getVerticalSize(183),
                                        width: getHorizontalSize(270),
                                        decoration:
                                            AppDecoration.outlineBlack9003f1,
                                        child: Stack(
                                            alignment: Alignment.topCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      padding: getPadding(
                                                          left: 27,
                                                          top: 8,
                                                          right: 27,
                                                          bottom: 8),
                                                      decoration: AppDecoration
                                                          .fillDeeppurpleA200,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "lbl_be_safe"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtLeelawadeeUI20),
                                                            Container(
                                                                width:
                                                                    getHorizontalSize(
                                                                        211),
                                                                margin:
                                                                    getMargin(
                                                                        top: 20,
                                                                        bottom:
                                                                            11),
                                                                child: Text(
                                                                    "msg_a_sos_alert_along2"
                                                                        .tr,
                                                                    maxLines:
                                                                        null,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: AppStyle
                                                                        .txtLeelawadeeUI20WhiteA700))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: Padding(
                                                      padding:
                                                          getPadding(top: 40),
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  270),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .whiteA700))))
                                            ])))
                              ])),
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

  onTapReply3() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}

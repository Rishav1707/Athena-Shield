import 'controller/voice_note_controller.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';

class VoiceNoteScreen extends GetWidget<VoiceNoteController> {
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
                    onTap: onTapReply4),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 16, bottom: 16),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("lbl_voice_note".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtLeelawadeeUI32)),
                      Container(
                          height: getVerticalSize(142),
                          width: getHorizontalSize(150),
                          margin: getMargin(top: 57),
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.center,
                                child: DottedBorder(
                                    color: ColorConstant.black90001,
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(2),
                                        top: getVerticalSize(2),
                                        right: getHorizontalSize(2),
                                        bottom: getVerticalSize(2)),
                                    strokeWidth: getHorizontalSize(2),
                                    radius: Radius.circular(75),
                                    borderType: BorderType.RRect,
                                    dashPattern: [15, 15],
                                    child: Container(
                                        height: getVerticalSize(142),
                                        width: getHorizontalSize(150),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(75)))))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                    padding: getPadding(top: 50),
                                    child: Text("lbl_00_00".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtInterBold38)))
                          ])),
                      CustomImageView(
                          svgPath: ImageConstant.imgPlay,
                          height: getSize(100),
                          width: getSize(100),
                          alignment: Alignment.center,
                          margin: getMargin(top: 62, right: 20, bottom: 5,left:25))
                    ]))));
  }

  onTapReply4() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}

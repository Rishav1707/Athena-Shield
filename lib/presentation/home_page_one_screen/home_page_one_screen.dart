import 'controller/home_page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';

class HomePageOneScreen extends GetWidget<HomePageOneController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            drawer: Drawer(
              child:ListView(

                children: [
                  ListTile(
                    leading: Icon(Icons.input),
                    title: Text('Welcome'),
                    onTap: () => {},
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user),
                    title: Text('Profile'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Contacts'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                  ListTile(
                    leading: Icon(Icons.border_color),
                    title: Text('Help'),
                    onTap: () => {Navigator.of(context).pop()},
                  ),
                ],
              ),
            ),
            appBar: CustomAppBar(
                height: getVerticalSize(112),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview),
                actions: [

                  Padding(
                    padding: const EdgeInsets.only(right: 14),
                    child: IconButton(onPressed: (){
                      print('Button Tapped');




                      },
                      icon: Icon(Icons.menu, color:ColorConstant.pink400, size:32),),
                  )

                ]

            ),

            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 51, top: 3, right: 51, bottom: 3),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.txtOutlineBlack9003f,
                          child: Text("msg_welcome_username".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtLeelawadeeUI24)),
                      GestureDetector(
                          onTap: () {
                            onTapStacklightbulb();
                          },
                          child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 24),
                              color: ColorConstant.redA700,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder70),
                              child: Container(
                                  height: getSize(140),
                                  width: getSize(140),
                                  padding: getPadding(
                                      left: 19, top: 18, right: 19, bottom: 18),
                                  decoration: AppDecoration.fillRedA700
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder70),
                                  child: Stack(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgLightbulb,
                                        height: getSize(100),
                                        width: getSize(100),
                                        alignment: Alignment.topCenter)
                                  ])))),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                              padding: getPadding(top: 25, right: 14),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          onTapColumnlocation();
                                        },
                                        child: Container(
                                            decoration: AppDecoration
                                                .outlineBlack9003f1,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height:
                                                          getVerticalSize(64),
                                                      width:
                                                          getHorizontalSize(53),
                                                      margin:
                                                          getMargin(left: 18)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_location2".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular24))
                                                ]))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapColumnmicrophone();
                                        },
                                        child: Container(
                                            margin: getMargin(bottom: 1),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1,
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgMicrophone,
                                                      height:
                                                          getVerticalSize(62),
                                                      width:
                                                          getHorizontalSize(47),
                                                      margin:
                                                          getMargin(left: 4)),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_voice".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtInterRegular24))
                                                ])))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 12, top: 35, right: 10, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      onTapColumnquestion();
                                    },
                                    child: Container(
                                        margin: getMargin(top: 21),
                                        decoration:
                                            AppDecoration.outlineBlack9003f1,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgQuestion,
                                                  height: getSize(71),
                                                  width: getSize(71)),
                                              Padding(
                                                  padding: getPadding(top: 2),
                                                  child: Text("lbl_help2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular24))
                                            ]))),
                                GestureDetector(
                                    onTap: () {
                                      onTapColumnlightbulbone();
                                    },
                                    child: Container(
                                        margin: getMargin(bottom: 1),
                                        decoration:
                                            AppDecoration.outlineBlack9003f1,
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgLightbulbPink400,
                                                  height: getVerticalSize(82),
                                                  width: getHorizontalSize(70)),
                                              Padding(
                                                  padding: getPadding(top: 11),
                                                  child: Text("lbl_tips2".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtInterRegular24))
                                            ])))
                              ]))
                    ]))));
  }

  onTapStacklightbulb() {
    Get.toNamed(AppRoutes.sosScreenTwoScreen);
  }

  onTapColumnlocation() {
    Get.toNamed(AppRoutes.locationScreen);
  }

  onTapColumnmicrophone() {
    Get.toNamed(AppRoutes.voiceNoteScreen);
  }

  onTapColumnquestion() {
    Get.toNamed(AppRoutes.helpScreen);
  }

  onTapColumnlightbulbone() {
    Get.toNamed(AppRoutes.tipsScreen);
  }
}



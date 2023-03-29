import 'dart:async';

import 'controller/location_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/widgets/custom_search_view.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_sms/flutter_sms.dart';

class LocationScreen extends GetWidget<LocationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 11, right: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 5, right: 44),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgReply,
                                    height: getVerticalSize(21),
                                    width: getHorizontalSize(24),
                                    margin: getMargin(top: 21, bottom: 112),
                                    onTap: () {
                                      onTapImgReply();
                                    }),
                                Container(
                                    height: getVerticalSize(154),
                                    width: getHorizontalSize(250),
                                    margin: getMargin(left: 15),
                                    child: Stack(
                                        alignment: Alignment.topCenter,
                                        children: [
                                          Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                  decoration: AppDecoration
                                                      .txtOutlineBlack9003f,
                                                  child: Text(
                                                      "lbl_your_location".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: AppStyle
                                                          .txtLeelawadeeUI32))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAthenashieldremovebgpreview,
                                              height: getVerticalSize(112),
                                              width: getHorizontalSize(250),
                                              alignment: Alignment.topCenter)
                                        ]))
                              ])),
                      Container(
                          height: getVerticalSize(241),
                          width: getHorizontalSize(336),
                          margin: getMargin(left: 2, top: 22),
                          child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgMap1,
                                    height: getVerticalSize(241),
                                    width: getHorizontalSize(336),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(15)),
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: getPadding(right: 10),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgPlus,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  alignment:
                                                      Alignment.centerRight),
                                              Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                      margin:
                                                          getMargin(top: 12),
                                                      padding: getPadding(
                                                          left: 4,
                                                          top: 9,
                                                          right: 4,
                                                          bottom: 9),
                                                      decoration: AppDecoration
                                                          .outlineBlack900
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder8),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                                height:
                                                                    getVerticalSize(
                                                                        1),
                                                                width:
                                                                    getHorizontalSize(
                                                                        10),
                                                                decoration: BoxDecoration(
                                                                    color: ColorConstant
                                                                        .black900,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            getHorizontalSize(1))))
                                                          ]))),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgSettings,
                                                  height: getSize(25),
                                                  width: getSize(25),
                                                  alignment: Alignment.center,
                                                  margin: getMargin(top: 134))
                                            ])))
                              ])),
                      CustomSearchView(
                          focusNode: FocusNode(),
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          margin: getMargin(left: 1, top: 33),
                          prefix: Container(
                              margin: getMargin(
                                  left: 12, top: 8, right: 8, bottom: 8),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(40)),
                          suffix: Padding(
                              padding:
                                  EdgeInsets.only(right: getHorizontalSize(15)),
                              child: IconButton(
                                  onPressed: () {
                                    controller.searchController.clear();
                                  },
                                  icon: Icon(Icons.clear,
                                      color: Colors.grey.shade600)))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 27, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgCalendar,
                                        height: getVerticalSize(72),
                                        width: getHorizontalSize(59)),
                                    InkWell(
                                      onTap: () async{
                                        Position? position = await Geolocator.getCurrentPosition(
                                            desiredAccuracy: LocationAccuracy.high);

                                            print('Position =     ${position}\n Latitutde == ${position.latitude.toString()} \n Longitude == ${position.longitude.toString()}');
                                            String message = "https://www.latlong.net/c/?lat=${position.latitude.toString()}&long=${position.longitude.toString()}";
                                          print('${message}');

                                        // List<String> recipents = ["9810781435", "8269937825"];
                                        //
                                        // _sendSMS(message, recipents);

                                      } ,
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSend,
                                          height: getVerticalSize(52),
                                          width: getHorizontalSize(54),
                                          margin: getMargin(left: 71, top: 20)),
                                    ),

                                  ])))
                    ]))));
  }

  onTapImgReply() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}


/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents)
      .catchError((onError) {
    print(onError);
  });
  print(_result);
}



void SendLocation() async{

  Position? position = await
  Geolocator.getCurrentPosition
    (
      desiredAccuracy: LocationAccuracy.high);
  String message = "https://www.latlong.net/c/?lat=${position.latitude.toString()}&long=${position.longitude.toString()}";

  print('Position =     ${position}\n Latitutde == ${position.latitude.toString()} \n Longitude == ${position.longitude.toString()}');
  print('${message}');

  List<String> recipents = ["9810781435", "8269937825"];

  _sendSMS(message, recipents);
}
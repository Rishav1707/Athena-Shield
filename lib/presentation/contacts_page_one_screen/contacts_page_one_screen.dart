import 'controller/contacts_page_one_controller.dart';
import 'package:flutter/material.dart';
import 'package:women_app/core/app_export.dart';
import 'package:women_app/core/utils/validation_functions.dart';
import 'package:women_app/widgets/app_bar/appbar_image.dart';
import 'package:women_app/widgets/app_bar/custom_app_bar.dart';
import 'package:women_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ContactsPageOneScreen extends GetWidget<ContactsPageOneController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(112),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getVerticalSize(21),
                    width: getHorizontalSize(24),
                    svgPath: ImageConstant.imgReply,
                    margin: getMargin(left: 16, top: 21, bottom: 70),
                    onTap: onTapReply6),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(112),
                    width: getHorizontalSize(250),
                    imagePath: ImageConstant.imgAthenashieldremovebgpreview)),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 28, top: 4, right: 32, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  decoration:
                                      AppDecoration.txtOutlineBlack9003f,
                                  child: Text("lbl_contacts2".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtLeelawadeeUI32)),
                              Container(
                                  height: getVerticalSize(367),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(top: 45),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_1_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900)),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 137),
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_2_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900)),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 149),
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_3_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900))
                                                ])),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameController,
                                            hintText: "lbl_enter_name".tr,
                                            margin: getMargin(top: 34),
                                            alignment: Alignment.topCenter,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameOneController,
                                            hintText: "lbl_enter_phone_no".tr,
                                            margin: getMargin(top: 100),
                                            textInputType: TextInputType.phone,
                                            alignment: Alignment.topCenter,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameTwoController,
                                            hintText: "lbl_enter_name".tr,
                                            margin: getMargin(bottom: 114),
                                            alignment: Alignment.bottomCenter,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameThreeController,
                                            hintText: "lbl_enter_phone_no".tr,
                                            margin: getMargin(bottom: 49),
                                            textInputType: TextInputType.phone,
                                            alignment: Alignment.bottomCenter,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            })
                                      ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.frameFourController,
                                  hintText: "lbl_enter_name".tr,
                                  margin: getMargin(top: 10),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  }),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.frameFiveController,
                                  hintText: "lbl_enter_phone_no".tr,
                                  margin: getMargin(top: 13),
                                  textInputType: TextInputType.phone,
                                  validator: (value) {
                                    if (!isValidPhone(value)) {
                                      return "Please enter valid phone number";
                                    }
                                    return null;
                                  }),
                              Container(
                                  height: getVerticalSize(374),
                                  width: getHorizontalSize(300),
                                  margin: getMargin(top: 12),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_4_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900)),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 140),
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_5_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900)),
                                                  Container(
                                                      margin:
                                                          getMargin(top: 153),
                                                      decoration: AppDecoration
                                                          .txtOutlineBlack9003f,
                                                      child: Text(
                                                          "msg_contact_6_details"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtLeelawadeeUI20Black900))
                                                ])),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameSixController,
                                            hintText: "lbl_enter_name".tr,
                                            margin: getMargin(top: 37),
                                            alignment: Alignment.topCenter,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameSevenController,
                                            hintText: "lbl_enter_phone_no".tr,
                                            margin: getMargin(top: 100),
                                            textInputType: TextInputType.phone,
                                            alignment: Alignment.topCenter,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameEightController,
                                            hintText: "lbl_enter_name".tr,
                                            margin: getMargin(bottom: 121),
                                            alignment: Alignment.bottomCenter,
                                            validator: (value) {
                                              if (!isText(value)) {
                                                return "Please enter valid text";
                                              }
                                              return null;
                                            }),
                                        CustomTextFormField(
                                            width: getHorizontalSize(300),
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.frameNineController,
                                            hintText: "lbl_enter_phone_no".tr,
                                            margin: getMargin(bottom: 56),
                                            textInputType: TextInputType.phone,
                                            alignment: Alignment.bottomCenter,
                                            validator: (value) {
                                              if (!isValidPhone(value)) {
                                                return "Please enter valid phone number";
                                              }
                                              return null;
                                            })
                                      ])),
                              CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: controller.frameTenController,
                                  hintText: "lbl_enter_name".tr,
                                  margin: getMargin(top: 16),
                                  validator: (value) {
                                    if (!isText(value)) {
                                      return "Please enter valid text";
                                    }
                                    return null;
                                  })
                            ])))),
            bottomNavigationBar: CustomTextFormField(
                focusNode: FocusNode(),
                controller: controller.frameElevenController,
                hintText: "lbl_enter_phone_no".tr,
                margin: getMargin(left: 28, right: 32, bottom: 28),
                variant: TextFormFieldVariant.OutlineBlack900_1,
                textInputAction: TextInputAction.done,
                textInputType: TextInputType.phone,
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "Please enter valid phone number";
                  }
                  return null;
                })));
  }

  onTapReply6() {
    Get.toNamed(AppRoutes.homePageOneScreen);
  }
}

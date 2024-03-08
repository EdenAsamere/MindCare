import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_pin_code_text_field.dart';
import 'package:mindcare_plus/widgets/custom_elevated_button.dart';
import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CalendarScreen extends StatelessWidget {
  CalendarScreen({Key? key}) : super(key: key);

  TextEditingController megaphoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: 734.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.only(bottom: 5.v),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 25.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            width: 354.h,
                                            child: Text(
                                                "Confirm a date and time for your appointment with a general practictioner. Include a note aswell",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 8.v),
                                        _buildOtpView(context),
                                        SizedBox(height: 41.v),
                                        Text("DOCTOR",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 17.v),
                                        _buildDoctor1(context),
                                        SizedBox(height: 16.v),
                                        Divider(),
                                        SizedBox(height: 33.v),
                                        Text("SERVICE",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 19.v),
                                        _buildFrame(context),
                                        SizedBox(height: 35.v),
                                        Text("DATE & TIME",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 9.v),
                                        _buildFrame1(context),
                                        SizedBox(height: 32.v),
                                        Divider(),
                                        SizedBox(height: 25.v),
                                        Text("NOTE",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 9.v),
                                        _buildMegaphone(context),
                                        SizedBox(height: 25.v),
                                        Text("ATTACHMENTS",
                                            style: theme.textTheme.titleSmall),
                                        SizedBox(height: 9.v),
                                        Row(children: [
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAddPrimary,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10.h,
                                                  top: 3.v,
                                                  bottom: 3.v),
                                              child: Text("Add Attachments",
                                                  style: CustomTextStyles
                                                      .titleSmallPrimary))
                                        ]),
                                        SizedBox(height: 22.v)
                                      ]))),
                          _buildInputField(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 23.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgIcon,
            margin: EdgeInsets.only(left: 17.h, top: 22.v, bottom: 30.v),
            onTap: () {
              onTapIcon(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Back", margin: EdgeInsets.only(bottom: 3.v)),
              AppbarTitle(
                  text: "Book an Appointment",
                  margin: EdgeInsets.only(left: 22.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildOtpView(BuildContext context) {
    return CustomPinCodeTextField(context: context, onChanged: (value) {});
  }

  /// Section Widget
  Widget _buildDoctor1(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.only(bottom: 6.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle2,
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    radius: BorderRadius.circular(20.h),
                    alignment: Alignment.center),
                Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        decoration: BoxDecoration(
                            color: appTheme.greenA700,
                            borderRadius: BorderRadius.circular(5.h),
                            border: Border.all(
                                color: appTheme.gray100,
                                width: 1.h,
                                strokeAlign: strokeAlignOutside))))
              ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Dr. Frank Ufondu.",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 8.v),
                    Text("MBBS, BCS, MD (Medical Officer)",
                        style: theme.textTheme.titleSmall)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 2.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Text("Medical Officer",
                      style: CustomTextStyles.titleMediumGray900_1)),
              Container(
                  height: 1.v,
                  width: 20.h,
                  margin: EdgeInsets.symmetric(vertical: 9.v),
                  decoration: BoxDecoration(color: appTheme.gray900)),
              Text("Video Consultation (₦5,700)",
                  style: CustomTextStyles.titleMediumBluegray70002)
            ]));
  }

  /// Section Widget
  Widget _buildNdWedJune2022(BuildContext context) {
    return CustomElevatedButton(
        width: 183.h,
        text: "22nd Wed, June 2022",
        buttonStyle: CustomButtonStyles.fillGray,
        buttonTextStyle: CustomTextStyles.titleMediumGray900_1,
        onPressed: () {
          onTapndWedJune2022(context);
        });
  }

  /// Section Widget
  Widget _buildAM(BuildContext context) {
    return CustomElevatedButton(
        width: 80.h,
        text: "9:41 AM",
        margin: EdgeInsets.only(left: 27.h),
        buttonStyle: CustomButtonStyles.fillGrayE,
        buttonTextStyle: CustomTextStyles.titleMediumBlack900_1);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 40.h),
        child: Row(children: [
          _buildNdWedJune2022(context),
          Padding(
              padding: EdgeInsets.only(left: 27.h),
              child: SizedBox(
                  height: 36.v,
                  child: VerticalDivider(
                      width: 1.h,
                      thickness: 1.v,
                      color: theme.colorScheme.primaryContainer,
                      indent: 8.h,
                      endIndent: 8.h))),
          _buildAM(context)
        ]));
  }

  /// Section Widget
  Widget _buildMegaphone(BuildContext context) {
    return CustomTextFormField(
        controller: megaphoneController,
        hintText: "Type your complaints....",
        hintStyle: CustomTextStyles.titleMediumBluegray500,
        textInputAction: TextInputAction.done,
        suffix: Container(
            margin: EdgeInsets.fromLTRB(30.h, 30.v, 5.h, 5.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMegaphone,
                height: 18.adaptSize,
                width: 18.adaptSize)),
        suffixConstraints: BoxConstraints(maxHeight: 80.v),
        maxLines: 4,
        contentPadding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 13.v),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimaryContainerTL6);
  }

  /// Section Widget
  Widget _buildHeathProfile(BuildContext context) {
    return CustomOutlinedButton(
        text: "Heath Profile",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightOnprimary,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer,
        onPressed: () {
          onTapHeathProfile(context);
        });
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
            decoration: AppDecoration.outlineBlack,
            child: _buildHeathProfile(context)));
  }

  /// Navigates back to the previous screen.
  onTapIcon(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the dateAndTimePickerScreen when the action is triggered.
  onTapndWedJune2022(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.dateAndTimePickerScreen);
  }

  /// Navigates to the bookAppointmentThreeScreen when the action is triggered.
  onTapHeathProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAppointmentThreeScreen);
  }
}

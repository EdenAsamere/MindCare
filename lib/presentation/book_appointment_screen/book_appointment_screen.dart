import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_pin_code_text_field.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class BookAppointmentScreen extends StatelessWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

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
                        padding: EdgeInsets.symmetric(vertical: 26.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 343.h,
                                  margin:
                                      EdgeInsets.only(left: 16.h, right: 30.h),
                                  child: Text(
                                      "Make sure all details are correct as these information would aid the Medical Practictioner.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 8.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomPinCodeTextField(
                                  context: context, onChanged: (value) {})),
                          SizedBox(height: 40.v),
                          _buildReason(context),
                          SizedBox(height: 36.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                      "How long have you felt this way?",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "3 Days",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 37.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("List of symptoms",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 11.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping:
                                      "Diificulty sleeping, Fever, Loss of tatse",
                                  change: "(Change)")),
                          SizedBox(height: 6.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Active Medications",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "No",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 37.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Drug Allergies",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 21.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "No",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Medical Conditions",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 23.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "No",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 36.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Surgeries",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 22.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "No",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 37.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Family History",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 21.v),
                          Padding(
                              padding: EdgeInsets.only(left: 16.h, right: 26.h),
                              child: _buildFrameThirteen(context,
                                  diificultySleeping: "No",
                                  change: "(Change)")),
                          SizedBox(height: 19.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 32.v),
                          _buildInputField(context),
                          SizedBox(height: 22.v)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 32.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 8.h, top: 16.v, bottom: 24.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Back", margin: EdgeInsets.symmetric(vertical: 1.v)),
              AppbarTitle(
                  text: "Review Profile", margin: EdgeInsets.only(left: 57.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildReason(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 6.v),
        decoration: AppDecoration.fillDeepOrange
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(10.h),
                  decoration: AppDecoration.fillRed
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEmergency,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      alignment: Alignment.center)),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 11.v),
                  child: Text("New Health Concern",
                      style: CustomTextStyles.titleMediumGray900Bold))
            ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
        decoration: AppDecoration.outlineBlack,
        child: CustomOutlinedButton(
            text: "Next",
            rightIcon: Container(
                margin: EdgeInsets.only(left: 30.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgArrowrightOnprimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonTextStyle: CustomTextStyles.titleMediumOnPrimary,
            onPressed: () {
              onTapNext(context);
            }));
  }

  /// Common widget
  Widget _buildFrameThirteen(
    BuildContext context, {
    required String diificultySleeping,
    required String change,
  }) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
              width: 232.h,
              child: Text(diificultySleeping,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeGray900
                      .copyWith(color: appTheme.gray900, height: 1.50))),
          Padding(
              padding: EdgeInsets.only(left: 47.h, top: 13.v, bottom: 15.v),
              child: Text(change,
                  style: CustomTextStyles.bodyLargePrimary
                      .copyWith(color: theme.colorScheme.primary)))
        ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bookAppointmentOneScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAppointmentOneScreen);
  }
}

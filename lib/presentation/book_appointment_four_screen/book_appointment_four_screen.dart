import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'widgets/reasons_item_widget.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class BookAppointmentFourScreen extends StatelessWidget {
  const BookAppointmentFourScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 28.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Who is this appointment for?",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018)),
                              SizedBox(height: 18.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    Column(children: [
                                      CustomIconButton(
                                          height: 50.adaptSize,
                                          width: 50.adaptSize,
                                          padding: EdgeInsets.all(10.h),
                                          decoration: IconButtonStyleHelper
                                              .outlinePrimary,
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage)),
                                      SizedBox(height: 6.v),
                                      Text("Nomso",
                                          style: CustomTextStyles
                                              .titleMediumGray900_1)
                                    ]),
                                    Padding(
                                        padding: EdgeInsets.only(left: 32.h),
                                        child: Column(children: [
                                          CustomIconButton(
                                              height: 50.adaptSize,
                                              width: 50.adaptSize,
                                              padding: EdgeInsets.all(13.h),
                                              decoration: IconButtonStyleHelper
                                                  .outlinePrimaryContainer,
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgAdd)),
                                          SizedBox(height: 6.v),
                                          Text("Add individual",
                                              style: CustomTextStyles
                                                  .titleMediumBluegray500)
                                        ]))
                                  ])),
                              SizedBox(height: 39.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                      "What is the patient’s current location?",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018)),
                              SizedBox(height: 20.v),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: 350.h,
                                      margin: EdgeInsets.only(
                                          left: 16.h, right: 23.h),
                                      child: Text(
                                          "This would help us connect you with the best available licensed Doctor for that location on our platform.",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(height: 1.50)))),
                              SizedBox(height: 16.v),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, right: 82.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgPinDrop,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, top: 3.v),
                                        child: Text("Surulere, Lagos, Nigeria",
                                            style: CustomTextStyles
                                                .bodyLargeGray900)),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.h, top: 3.v),
                                        child: Text("(Change)",
                                            style: CustomTextStyles
                                                .bodyLargePrimary))
                                  ])),
                              SizedBox(height: 47.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                      "What’s the main reason for your visit?",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018)),
                              SizedBox(height: 17.v),
                              _buildReasons(context),
                              SizedBox(height: 40.v),
                              _buildWarning(context),
                              SizedBox(height: 40.v),
                              _buildInputField(context),
                              SizedBox(height: 19.v)
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
                  text: "Home", margin: EdgeInsets.only(bottom: 3.v)),
              AppbarTitle(
                  text: "Appointments", margin: EdgeInsets.only(left: 52.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildReasons(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisExtent: 171.v,
                    crossAxisCount: 2,
                    mainAxisSpacing: 10.h,
                    crossAxisSpacing: 10.h),
                physics: NeverScrollableScrollPhysics(),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return ReasonsItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildWarning(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 8.v),
            decoration: AppDecoration.fillBlueGray,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 2.v),
              SizedBox(
                  width: 311.h,
                  child: Text(
                      "For medical emergencies, please call 112 (or your local emergency number) or go to the nearest emergency hospital.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyLargeBluegray80001
                          .copyWith(height: 1.50)))
            ])));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
        decoration: AppDecoration.outlineBlack,
        child: CustomOutlinedButton(
            text: "Select a Cader",
            rightIcon: Container(
                margin: EdgeInsets.only(left: 8.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgArrowrightOnprimary,
                    height: 24.adaptSize,
                    width: 24.adaptSize)),
            buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer,
            onPressed: () {
              onTapSelectACader(context);
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the selectFieldScreen when the action is triggered.
  onTapSelectACader(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectFieldScreen);
  }
}

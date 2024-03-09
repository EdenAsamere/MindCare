import 'package:mindcare_plus/presentation/search_page/search_page.dart';
import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_elevated_button.dart';
import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CalendarTwoScreen extends StatelessWidget {
  CalendarTwoScreen({Key? key}) : super(key: key);

  TextEditingController doctorOneController = TextEditingController();

  TextEditingController doctorOneController1 = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 24.v),
                        _buildFrame(context),
                        SizedBox(height: 7.v),
                        Text("See all your appointments",
                            style: theme.textTheme.bodyLarge),
                        SizedBox(height: 28.v),
                        Text("Today’s Appointment",
                            style: CustomTextStyles.titleMediumGray900_1),
                        SizedBox(height: 9.v),
                        _buildDoctor1(context),
                        SizedBox(height: 8.v),
                        Row(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgAddPrimary,
                              height: 24.adaptSize,
                              width: 24.adaptSize),
                          Padding(
                              padding: EdgeInsets.only(left: 10.h, top: 3.v),
                              child: Text("Add an Appointment",
                                  style: CustomTextStyles.titleMediumPrimary))
                        ]),
                        SizedBox(height: 8.v),
                        Divider(),
                        Divider(),
                        SizedBox(height: 25.v),
                        Text("Tomorrow",
                            style: CustomTextStyles.bodyLargeGray900),
                        SizedBox(height: 11.v),
                        CustomTextFormField(
                            readOnly: true,
                            controller: doctorOneController,
                            hintText: "Book an Appointment",
                            hintStyle: CustomTextStyles.titleMediumPrimary,
                            prefix: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgAddPrimary,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 56.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillOnPrimary),
                        SizedBox(height: 8.v),
                        Divider(),
                        SizedBox(height: 27.v),
                        Text("Friday",
                            style: CustomTextStyles.bodyLargeGray900),
                        SizedBox(height: 9.v),
                        CustomTextFormField(
                            readOnly: true,
                            controller: doctorOneController1,
                            hintText: "Book an Appointment",
                            hintStyle: CustomTextStyles.titleMediumPrimary,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10.h, vertical: 16.v),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgAddPrimary,
                                    height: 24.adaptSize,
                                    width: 24.adaptSize)),
                            prefixConstraints: BoxConstraints(maxHeight: 56.v),
                            borderDecoration:
                                TextFormFieldStyleHelper.fillOnPrimary),
                        SizedBox(height: 8.v),
                        Divider(),
                        SizedBox(height: 27.v),
                        Text("Saturday",
                            style: CustomTextStyles.bodyLargeGray900),
                        SizedBox(height: 9.v),
                        _buildDoctor2(context),
                        SizedBox(height: 8.v),
                        Divider()
                      ])),
            )));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Calendar"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 11.v, bottom: 7.v),
          child:
              Text("Appointments", style: CustomTextStyles.titleMediumGray900)),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 9.v),
          decoration: AppDecoration.outlinePrimaryContainer3
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder22),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            CustomImageView(
                imagePath: ImageConstant.imgTocPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize),
            Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: SizedBox(
                    height: 20.v,
                    child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primaryContainer))),
            CustomImageView(
                imagePath: ImageConstant.imgCalendarMonthBlueGray300,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 20.h),
                onTap: () {
                  onTapImgCalendarMonth(context);
                })
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildDoctor1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 17.v),
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
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomElevatedButton(
                        height: 22.v, width: 119.h, text: "Video Consultation"),
                    SizedBox(height: 4.v),
                    Text("Dr. Frank Ufondu.",
                        style: CustomTextStyles.titleMediumBold),
                    SizedBox(height: 8.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Today, 12:30pm ",
                              style: CustomTextStyles.titleMediumff252a31),
                          TextSpan(
                              text: "(30mins)",
                              style: CustomTextStyles.bodyLargeff667084)
                        ]),
                        textAlign: TextAlign.left)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  decoration: IconButtonStyleHelper.fillTeal,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVideocamOnprimary)))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant.imgAddPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 3.v),
              child: Text("Book an Appointment",
                  style: CustomTextStyles.titleMediumPrimary))
        ]));
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.searchPage:
        return SearchPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the calendarOneScreen when the action is triggered.
  onTapImgCalendarMonth(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.calendarOneScreen);
  }
}

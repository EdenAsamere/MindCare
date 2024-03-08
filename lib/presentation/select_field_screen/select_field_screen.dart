import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_search_view.dart';
import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SelectFieldScreen extends StatelessWidget {
  SelectFieldScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 24.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(children: [
                          CustomSearchView(
                              controller: searchController, hintText: "Search"),
                          SizedBox(height: 29.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Frequently used Caders.",
                                  style: CustomTextStyles.titleLargeBlack900)),
                          SizedBox(height: 9.v),
                          _buildTile(context),
                          SizedBox(height: 8.v),
                          _buildTile1(context),
                          SizedBox(height: 8.v),
                          Divider(),
                          SizedBox(height: 45.v),
                          _buildActions(context),
                          SizedBox(height: 33.v),
                          _buildTile2(context),
                          SizedBox(height: 20.v),
                          _buildTile3(context),
                          SizedBox(height: 20.v),
                          _buildTile4(context),
                          SizedBox(height: 20.v),
                          _buildTile5(context),
                          SizedBox(height: 24.v)
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
                  text: "Select a Cader", margin: EdgeInsets.only(left: 51.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildTile(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTile(context);
        },
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgHealthiconsDoctorMale))),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Medical Officers",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 7.v),
                        Text("365 available doctors",
                            style: theme.textTheme.bodyMedium)
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 10.v))
            ])));
  }

  /// Section Widget
  Widget _buildTile1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 17.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 1.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgPhBabyFillPrimary))),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Child Specialist",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    Text("75 available doctors",
                        style: theme.textTheme.bodyMedium)
                  ])),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgGlyph,
              height: 11.v,
              width: 7.h,
              margin: EdgeInsets.only(top: 16.v, right: 8.h, bottom: 16.v))
        ]));
  }

  /// Section Widget
  Widget _buildActions(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Caders", style: CustomTextStyles.titleMediumOnErrorContainer),
          Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: Text("See more ",
                  style: CustomTextStyles.titleSmallPrimaryBold))
        ]));
  }

  /// Section Widget
  Widget _buildTile2(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(6.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgHealthiconsHeartCardiogram))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Cardiologist",
                            style: theme.textTheme.titleMedium),
                        SizedBox(height: 6.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Heart Specialist ",
                                      style: theme.textTheme.titleSmall)),
                              Container(
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray500,
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Text("75 available doctors",
                                  style: theme.textTheme.bodyMedium)
                            ])
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 10.h, top: 10.v, bottom: 10.v))
        ]));
  }

  /// Section Widget
  Widget _buildTile3(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(4.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFaSolidBrain))),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Neurologist", style: theme.textTheme.titleMedium),
                        SizedBox(height: 6.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("Brain Specialist",
                                      style: theme.textTheme.titleSmall)),
                              Container(
                                  height: 4.adaptSize,
                                  width: 4.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 6.v, bottom: 7.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.blueGray500,
                                      borderRadius:
                                          BorderRadius.circular(2.h))),
                              Text("33 available doctors",
                                  style: theme.textTheme.bodyMedium)
                            ])
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgGlyph,
              height: 11.v,
              width: 7.h,
              margin: EdgeInsets.only(left: 18.h, top: 17.v, bottom: 17.v))
        ]));
  }

  /// Section Widget
  Widget _buildTile4(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                            child: CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgIconParkSolidTeeth))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dentist",
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 7.v),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("Dental Surgeon",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Container(
                                                height: 4.adaptSize,
                                                width: 4.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 6.v, bottom: 8.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.blueGray500,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.h))),
                                            Text("119 available doctors",
                                                style:
                                                    theme.textTheme.bodyMedium)
                                          ])
                                    ])))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 11.v))
        ]));
  }

  /// Section Widget
  Widget _buildTile5(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 2.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: CustomIconButton(
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                padding: EdgeInsets.all(6.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgRemoveRedEye))),
                        Expanded(
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Ophthalmologist",
                                          style: theme.textTheme.titleMedium),
                                      SizedBox(height: 6.v),
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(top: 1.v),
                                                child: Text("Eye Specialist",
                                                    style: theme
                                                        .textTheme.titleSmall)),
                                            Container(
                                                height: 4.adaptSize,
                                                width: 4.adaptSize,
                                                margin: EdgeInsets.only(
                                                    left: 19.h,
                                                    top: 6.v,
                                                    bottom: 8.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.blueGray500,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.h))),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 9.h),
                                                child: Text(
                                                    "102 available doctors",
                                                    style: theme
                                                        .textTheme.bodyMedium))
                                          ])
                                    ])))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 24.adaptSize,
              width: 24.adaptSize,
              margin: EdgeInsets.only(left: 10.h, top: 11.v, bottom: 11.v))
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the chooseDoctorScreen when the action is triggered.
  onTapTile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chooseDoctorScreen);
  }
}

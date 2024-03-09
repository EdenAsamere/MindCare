import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_search_view.dart';
import 'package:mindcare_plus/widgets/custom_drop_down.dart';
import 'package:mindcare_plus/widgets/custom_rating_bar.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ChooseDoctorScreen extends StatelessWidget {
  ChooseDoctorScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  List<String> dropdownItemList = [
    "Today",
    "This Week",
    "This Month",
  ];

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
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(vertical: 24.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search")),
                          SizedBox(height: 24.v),
                          _buildSort(context),
                          _buildInputField(context),
                          SizedBox(height: 8.v),
                          _buildDoctor2(context),
                          SizedBox(height: 8.v),
                          _buildDoctor3(context),
                          SizedBox(height: 8.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Available doctors",
                                      style: CustomTextStyles
                                          .titleLargeBlack900))),
                          SizedBox(height: 23.v),
                          _buildDoctor4(context),
                          SizedBox(height: 4.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 4.v),
                          _buildDoctor5(context),
                          SizedBox(height: 4.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 4.v),
                          _buildDoctor6(context),
                          SizedBox(height: 4.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 4.v),
                          _buildDoctor7(context),
                          SizedBox(height: 4.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 4.v),
                          _buildDoctor8(context),
                          SizedBox(height: 24.v)
                        ])))),
            bottomNavigationBar: _buildInputField1(context)));
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
        title: AppbarTitle(
            text: "Choose Doctor", margin: EdgeInsets.only(left: 44.h)),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildSort(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.outlineBlueGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.v),
              child: CustomDropDown(
                  width: 140.h,
                  icon: Container(
                      margin: EdgeInsets.only(right: 12),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgArrowdropdown,
                          height: 24.adaptSize,
                          width: 24.adaptSize)),
                  hintText: "Available Today",
                  items: dropdownItemList,
                  borderDecoration: DropDownStyleHelper.fillPrimary,
                  fillColor: theme.colorScheme.primary,
                  onChanged: (value) {})),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 16.v),
              child: CustomDropDown(
                  width: 80.h,
                  icon: Container(),
                  hintText: "In-Person",
                  hintStyle: theme.textTheme.bodyMedium!,
                  borderDecoration:
                      DropDownStyleHelper.outlinePrimaryContainerTL20,
                  onChanged: (value) {})),
          SizedBox(
              height: 72.v,
              width: 111.h,
              child: Stack(alignment: Alignment.centerRight, children: [
                Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        width: 77,
                        padding: EdgeInsets.all(7.h),
                        decoration: AppDecoration.outlinePrimaryContainer1
                            .copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder22),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.symmetric(vertical: 3.v),
                              child: Text("Via Text",
                                  style: theme.textTheme.bodyMedium)),
                        ]))),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        height: 72.v,
                        width: 33.h,
                        // padding: EdgeInsets.fromLTRB(9.h, 24.v, 10.h, 24.v),
                        decoration: AppDecoration.outlinePrimaryContainer2,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgFilterList,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.center)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 27.v),
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 6.v),
                    Text("Dr. Frank Ufondu",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Hisglory Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor2(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 27.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle240x40,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 6.v),
                    Text("Dr. Chukwuma Obinna",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Hisglory Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor3(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 27.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle21,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 8.v),
                    Text("Dr. Emeka Agbo", style: theme.textTheme.titleMedium),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Hisglory Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor4(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 26.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle22,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 7.v),
                    Text("Dr. Chukwunomnso Iwegbu",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Havana Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor5(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 26.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle23,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 6.v),
                    Text("Dr. Uchendu Ebuka",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Havana Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor6(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 26.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle24,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 6.v),
                    Text("Dr. Chindinma Nwokoro",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 6.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Havana Specialist Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor7(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 26.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle25,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 7.v),
                    Text("Dr. Adekunle Philips",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 4.v),
                    SizedBox(
                        width: 207.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRatingBar(initialRating: 0),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("1031 Ratings.",
                                      style: theme.textTheme.bodyMedium))
                            ])),
                    SizedBox(height: 6.v),
                    Text("Randle General Hospitals",
                        style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildDoctor8(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 40.adaptSize,
              width: 40.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 15.v),
              child: Stack(alignment: Alignment.bottomRight, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle26,
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
              padding: EdgeInsets.only(left: 10.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Medical Officer", style: theme.textTheme.bodyMedium),
                    SizedBox(height: 8.v),
                    Text("Dr. Ayobami Ayodele",
                        style: theme.textTheme.titleMedium),
                    SizedBox(height: 7.v),
                    Text("Marigold Hospital", style: theme.textTheme.bodyMedium)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 2.v),
        child: CustomOutlinedButton(
            text: "Next",
            buttonStyle: CustomButtonStyles.fillBlue,
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

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarScreen);
  }
}

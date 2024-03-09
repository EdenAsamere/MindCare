import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:mindcare_plus/presentation/search_page/search_page.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          Container(
                              height: 16.v,
                              width: double.maxFinite,
                              decoration: BoxDecoration()),
                          SizedBox(height: 32.v),
                          _buildHeader(context),
                          SizedBox(height: 17.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Upcoming Appointments",
                                      style:
                                          CustomTextStyles.titleLargePrimary))),
                          SizedBox(height: 9.v),
                          _buildTile1(context),
                          SizedBox(height: 16.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("For General Needs",
                                      style: CustomTextStyles
                                          .titleMediumGray900Bold18))),
                          SizedBox(height: 9.v),
                          Container(
                              width: 352.h,
                              margin: EdgeInsets.only(left: 16.h, right: 21.h),
                              child: Text(
                                  "Get medical advice, prescriptions, test & referrals by video appointment with our doctors.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 30.v),
                          _buildTile2(context),
                          SizedBox(height: 24.v),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: _buildTile(context,
                                  childrenSHealth: "Request Urgent Care",
                                  description:
                                      "Chat by video with the next available doctor.")),
                          SizedBox(height: 24.v),
                          _buildTile5(context),
                          SizedBox(height: 18.v),
                          Padding(
                            padding: EdgeInsets.only(left: 26.h),
                            child: _buildOptions(context,
                                seeMoreActions: "See more actions"),
                          ),
                          SizedBox(height: 16.v),
                        ]))))));
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Tadael!",
                            style: CustomTextStyles.titleLargeBold),
                        SizedBox(height: 9.v),
                        Text("What do you want to do today?",
                            style: theme.textTheme.bodyLarge)
                      ])),
              Padding(
                  padding: EdgeInsets.only(bottom: 16.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.outlineBlueGray,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgNotifications)))
            ]));
  }

  /// Section Widget
  Widget _buildTile1(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTile(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 15.v),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillTeal,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgCalendarMonth))),
                  Padding(
                      padding: EdgeInsets.only(left: 9.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 196.h,
                                child: Text(
                                    "You currently don’t have an appointment scheduled.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(height: 1.38))),
                            SizedBox(height: 6.v),
                            Text("Book an appointment today!",
                                style: theme.textTheme.bodyMedium)
                          ])),
                  Spacer(),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.symmetric(vertical: 22.v))
                ])));
  }

  /// Section Widget
  Widget _buildTile2(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTile1(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
            decoration: AppDecoration.outlineBlueGrayF
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgDuo))),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h, top: 2.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Talk to a Doctor",
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 7.v),
                                SizedBox(
                                    width: 247.h,
                                    child: Text(
                                        "Get medical advice, precriptions, test & more.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.43)))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 16.h, top: 22.v, bottom: 22.v))
                ])));
  }

  /// Section Widget
  Widget _buildTile4(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlueGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillTealTL20,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgVaccines))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h, top: 4.v),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Locate a Pharmacy",
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 6.v),
                            SizedBox(
                                width: 245.h,
                                child: Text(
                                    "Locate a Pharmacy within your area to purchase medications.",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.bodyMedium!
                                        .copyWith(height: 1.43)))
                          ]))),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(left: 18.h, top: 22.v, bottom: 22.v))
            ]));
  }

  /// Section Widget
  Widget _buildTile5(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTile2(context);
        },
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
            decoration: AppDecoration.outlineBlueGrayF
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 14.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(6.h),
                          decoration: IconButtonStyleHelper.fillDeepPurple,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgEvent))),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsets.only(left: 10.h, top: 4.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Book an Appointment",
                                    style: theme.textTheme.titleMedium),
                                SizedBox(height: 6.v),
                                SizedBox(
                                    width: 242.h,
                                    child: Text(
                                        "Choose a Primary Care Doctor and complete your first video appointment.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyMedium!
                                            .copyWith(height: 1.43)))
                              ]))),
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin:
                          EdgeInsets.only(left: 21.h, top: 22.v, bottom: 22.v))
                ])));
  }

  /// Common widget
  Widget _buildTile(
    BuildContext context, {
    required String childrenSHealth,
    required String description,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 14.v),
        decoration: AppDecoration.outlineBlueGrayF
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 14.v),
                  child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(6.h),
                      decoration: IconButtonStyleHelper.fillYellow,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgPhBabyFill))),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 2.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(childrenSHealth,
                            style: theme.textTheme.titleMedium!
                                .copyWith(color: appTheme.blueGray90001)),
                        SizedBox(height: 7.v),
                        SizedBox(
                            width: 233.h,
                            child: Text(description,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    color: appTheme.blueGray500, height: 1.43)))
                      ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 22.v))
            ]));
  }

  /// Common widget
  Widget _buildOptions(
    BuildContext context, {
    required String seeMoreActions,
  }) {
    return Row(children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Text(seeMoreActions,
              style: CustomTextStyles.titleSmallPrimaryBold
                  .copyWith(color: theme.colorScheme.primary))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRightPrimary,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 10.h))
    ]);
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

  /// Navigates to the bookAppointmentFourScreen when the action is triggered.
  onTapTile(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.bookAppointmentFourScreen);
  }

  /// Navigates to the bookAppointmentFourScreen when the action is triggered.
  onTapTile1(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.bookAppointmentFourScreen);
  }

  /// Navigates to the bookAppointmentFourScreen when the action is triggered.
  onTapTile2(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.chooseDoctorScreen);
  }
}

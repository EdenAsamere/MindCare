import 'package:mindcare_plus/presentation/search_page/search_page.dart';
import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:mindcare_plus/widgets/custom_search_view.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MessesagesOneScreen extends StatelessWidget {
  MessesagesOneScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v),
                decoration: AppDecoration.fillOnPrimary,
                child: Column(children: [
                  CustomSearchView(
                      controller: searchController, hintText: "Search"),
                  SizedBox(height: 10.v),
                  _buildMessagesThreadRow1(context),
                  _buildMessagesThreadRow2(context),
                  _buildMessagesThreadRow(context,
                      contactName: "Dr. Eze",
                      date: "19/06/2022",
                      messagePreview: "When you’re free come...."),
                  _buildMessagesThreadRow4(context),
                  _buildMessagesThreadRow5(context),
                  SizedBox(height: 5.v),
                  _buildMessagesThreadRow(context,
                      contactName: "Dr. Petr Cech",
                      date: "18/07/2021",
                      messagePreview: "We need to sign players....")
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Messages"),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgMoreHoriz,
              margin: EdgeInsets.fromLTRB(18.h, 16.v, 18.h, 24.v))
        ],
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildMessagesThreadRow1(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapMessagesThreadRow(context);
        },
        child: Container(
            decoration: AppDecoration.fillOnPrimary,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgCamera,
                  height: 45.v,
                  width: 60.h,
                  margin: EdgeInsets.symmetric(vertical: 15.v)),
              Expanded(
                  child: Container(
                      margin: EdgeInsets.only(left: 12.h),
                      padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
                      decoration: AppDecoration.outlineGray,
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 6.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Dr Frank Ufondu",
                                          style: CustomTextStyles
                                              .titleMediumBlack90018),
                                      SizedBox(height: 7.v),
                                      Text("It’s always my pleasure",
                                          style:
                                              CustomTextStyles.bodyLargeGray800)
                                    ])),
                            Spacer(),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: 2.v, bottom: 34.v),
                                child: Text("9:41 AM",
                                    style: CustomTextStyles.bodyMediumGray800)),
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowRightGray800,
                                height: 11.v,
                                width: 6.h,
                                margin:
                                    EdgeInsets.fromLTRB(14.h, 5.v, 16.h, 37.v))
                          ])))
            ])));
  }

  /// Section Widget
  Widget _buildMessagesThreadRow2(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMessagesAvatar,
              height: 45.adaptSize,
              width: 45.adaptSize,
              radius: BorderRadius.circular(22.h),
              margin: EdgeInsets.symmetric(vertical: 15.v)),
          Container(
              height: 76.v,
              width: 285.h,
              margin: EdgeInsets.only(left: 11.h),
              child: Stack(alignment: Alignment.bottomLeft, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 285.h,
                        padding: EdgeInsets.symmetric(vertical: 12.v),
                        decoration: AppDecoration.outlineGray,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 29.v),
                                  child: Text("Support",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 32.v),
                                  child: Text("Wed",
                                      style:
                                          CustomTextStyles.bodyMediumGray800)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowRightGray800,
                                  height: 11.v,
                                  width: 6.h,
                                  margin: EdgeInsets.fromLTRB(
                                      14.h, 3.v, 16.h, 35.v))
                            ]))),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 19.v),
                        child: Text("Your issue has been escalated....",
                            style: CustomTextStyles.bodyLargeGray800)))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildMessagesThreadRow4(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMessagesAvatar,
              height: 45.adaptSize,
              width: 45.adaptSize,
              radius: BorderRadius.circular(22.h),
              margin: EdgeInsets.symmetric(vertical: 15.v)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
                  decoration: AppDecoration.outlineGray,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(bottom: 5.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr. Anita Becker",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018),
                                  SizedBox(height: 7.v),
                                  Text("Thank you very much.",
                                      style: CustomTextStyles.bodyLargeGray800)
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 2.v, bottom: 34.v),
                            child: Text("11/04/2022",
                                style: CustomTextStyles.bodyMediumGray800)),
                        CustomImageView(
                            imagePath: ImageConstant.imgArrowRightGray800,
                            height: 11.v,
                            width: 6.h,
                            margin: EdgeInsets.only(
                                top: 5.v, right: 16.h, bottom: 37.v))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMessagesThreadRow5(BuildContext context) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMessagesAvatar,
              height: 45.adaptSize,
              width: 45.adaptSize,
              radius: BorderRadius.circular(22.h),
              margin: EdgeInsets.symmetric(vertical: 15.v)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.only(top: 13.v, bottom: 12.v),
                  decoration: AppDecoration.outlineGray,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(right: 16.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Dr. Frank Lampard",
                                      style: CustomTextStyles
                                          .titleMediumBlack90018),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 26.h, bottom: 3.v),
                                      child: Text("12/01/2022",
                                          style: CustomTextStyles
                                              .bodyMediumGray800)),
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrowRightGray800,
                                      height: 11.v,
                                      width: 6.h,
                                      margin: EdgeInsets.only(
                                          left: 14.h, top: 3.v, bottom: 6.v))
                                ])),
                        SizedBox(height: 5.v),
                        Text("Legend help coach our midf....",
                            style: CustomTextStyles.bodyLargeGray800),
                        SizedBox(height: 4.v)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildMessagesThreadRow(
    BuildContext context, {
    required String contactName,
    required String date,
    required String messagePreview,
  }) {
    return Container(
        decoration: AppDecoration.fillOnPrimary,
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMessagesAvatar,
              height: 45.adaptSize,
              width: 45.adaptSize,
              radius: BorderRadius.circular(22.h),
              margin: EdgeInsets.symmetric(vertical: 15.v)),
          Expanded(
              child: Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.only(top: 11.v, bottom: 10.v),
                  decoration: AppDecoration.outlineGray,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 269.h,
                            margin: EdgeInsets.only(right: 16.h),
                            child: Row(children: [
                              Text(contactName,
                                  style: CustomTextStyles.titleMediumBlack90018
                                      .copyWith(color: appTheme.black900)),
                              Spacer(),
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(date,
                                      style: CustomTextStyles.bodyMediumGray800
                                          .copyWith(
                                              color: appTheme.gray800
                                                  .withOpacity(0.6)))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgArrowRightGray800,
                                  height: 11.v,
                                  width: 6.h,
                                  margin: EdgeInsets.only(
                                      left: 14.h, top: 5.v, bottom: 4.v))
                            ])),
                        SizedBox(height: 7.v),
                        Text(messagePreview,
                            style: CustomTextStyles.bodyLargeGray800.copyWith(
                                color: appTheme.gray800.withOpacity(0.6))),
                        SizedBox(height: 6.v)
                      ])))
        ]));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.searchPage;
      case BottomBarEnum.Search:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Message:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
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

  /// Navigates to the messesagesTwoScreen when the action is triggered.
  onTapMessagesThreadRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messesagesTwoScreen);
  }
}

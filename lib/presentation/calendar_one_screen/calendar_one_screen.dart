import 'package:mindcare_plus/presentation/search_page/search_page.dart';
import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:mindcare_plus/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CalendarOneScreen extends StatelessWidget {
  CalendarOneScreen({Key? key}) : super(key: key);

  DateTime selectedDatesFromCalendar1 = DateTime.now();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              margin: EdgeInsets.only(bottom: 5.v),
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(children: [
                                _buildFrame1(context),
                                SizedBox(height: 7.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("See all your appointments",
                                        style: theme.textTheme.bodyLarge)),
                                SizedBox(height: 27.v),
                                _buildCALENDAR(context),
                                SizedBox(height: 35.v),
                                _buildFrame2(context),
                                SizedBox(height: 38.v),
                                _buildFrame3(context),
                                SizedBox(height: 27.v),
                                _buildFrame4(context),
                                SizedBox(height: 8.v),
                                Divider(color: theme.colorScheme.primary),
                                SizedBox(height: 26.v),
                                _buildFrame5(context),
                                SizedBox(height: 39.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: _buildFrame(context, time: "2 PM")),
                                SizedBox(height: 39.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: _buildFrame(context, time: "4 PM")),
                                SizedBox(height: 39.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: _buildFrame(context, time: "5 PM")),
                                SizedBox(height: 39.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10.h),
                                    child: _buildFrame(context, time: "6 PM")),
                                SizedBox(height: 38.v),
                                _buildFrame10(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: AppbarTitle(text: "Calendar"),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
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
                imagePath: ImageConstant.imgToc,
                height: 20.adaptSize,
                width: 20.adaptSize,
                onTap: () {
                  onTapImgToc(context);
                }),
            Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: SizedBox(
                    height: 20.v,
                    child: VerticalDivider(
                        width: 1.h,
                        thickness: 1.v,
                        color: theme.colorScheme.primaryContainer))),
            CustomImageView(
                imagePath: ImageConstant.imgCalendarMonthPrimary,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(left: 20.h))
          ]))
    ]);
  }

  /// Section Widget
  Widget _buildCALENDAR(BuildContext context) {
    return SizedBox(
        height: 127.v,
        width: 358.h,
        child: EasyDateTimeLine(
            initialDate: selectedDatesFromCalendar1,
            locale: 'en_US',
            headerProps: EasyHeaderProps(
                selectedDateFormat: SelectedDateFormat.fullDateDMY,
                monthPickerType: MonthPickerType.switcher,
                showHeader: false),
            dayProps: EasyDayProps(width: 358.h, height: 1.v),
            onDateChange: (selectedDate) {},
            itemBuilder:
                (context, dayNumber, dayName, monthName, fullDate, isSelected) {
              return isSelected
                  ? SizedBox(
                      width: 358.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.blueGray5001))
                  : Container(
                      width: 34.adaptSize,
                      padding:
                          EdgeInsets.symmetric(horizontal: 9.h, vertical: 6.v),
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(17.h)),
                      child: Text(dayNumber.toString(),
                          style: CustomTextStyles.titleMediumOnPrimary_1
                              .copyWith(
                                  color: theme.colorScheme.onPrimary
                                      .withOpacity(1))));
            }));
  }

  /// Section Widget
  Widget _buildFrame2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("10 AM", style: theme.textTheme.titleSmall),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Divider(indent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildFrame3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("11 AM", style: theme.textTheme.titleSmall),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Divider(indent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildFrame4(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.symmetric(vertical: 11.v),
          child: Text("12 PM", style: CustomTextStyles.titleSmallPrimaryBold)),
      Expanded(
          child: CustomOutlinedButton(
              height: 40.v,
              text: "Appointment with Dr. Frank Ufondu",
              margin: EdgeInsets.only(left: 10.h),
              buttonStyle: CustomButtonStyles.outlineLightBlue,
              buttonTextStyle: CustomTextStyles.titleMediumPrimary))
    ]);
  }

  /// Section Widget
  Widget _buildFrame5(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("1 PM", style: theme.textTheme.titleSmall),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Divider(indent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildFrame10(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("7 PM", style: theme.textTheme.titleSmall),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
                  child: Divider(indent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String time,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Text(time,
          style: theme.textTheme.titleSmall!
              .copyWith(color: appTheme.blueGray500)),
      Expanded(
          child: Padding(
              padding: EdgeInsets.only(top: 7.v, bottom: 8.v),
              child: Divider(indent: 10.h)))
    ]);
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

  /// Navigates to the calendarTwoScreen when the action is triggered.
  onTapImgToc(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarTwoScreen);
  }
}

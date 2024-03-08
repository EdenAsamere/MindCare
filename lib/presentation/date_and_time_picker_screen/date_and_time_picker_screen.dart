import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class DateAndTimePickerScreen extends StatelessWidget {
  const DateAndTimePickerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  Container(
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      decoration: AppDecoration.fillGray50,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 4.v),
                            Container(
                                height: 25.v,
                                width: 261.h,
                                margin: EdgeInsets.only(right: 37.h),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 9.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text(
                                                            "Fri 16 June",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 27),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("57",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 32),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("57",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 39),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("SM",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5.h,
                                                  right: 5.h,
                                                  bottom: 14.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text(
                                                            "Mon 45 June",
                                                            style: CustomTextStyles
                                                                .bodySmallGray500)),
                                                    Spacer(flex: 29),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("56",
                                                            style: CustomTextStyles
                                                                .sFProDisplayGray500)),
                                                    Spacer(flex: 32),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("56",
                                                            style: CustomTextStyles
                                                                .sFProDisplayGray500)),
                                                    Spacer(flex: 38),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("CM",
                                                            style: CustomTextStyles
                                                                .bodySmallGray500))
                                                  ])))
                                    ])),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 56.h, right: 31.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Opacity(
                                          opacity: 0.6,
                                          child: Text("Sat 17 June",
                                              style: CustomTextStyles
                                                  .bodyLargeSFProDisplayGray500)),
                                      Spacer(flex: 28),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Text("58",
                                              style: CustomTextStyles
                                                  .bodyLargeSFProDisplayGray500)),
                                      Spacer(flex: 33),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Text("58",
                                              style: CustomTextStyles
                                                  .bodyLargeSFProDisplayGray500)),
                                      Spacer(flex: 37),
                                      Opacity(
                                          opacity: 0.6,
                                          child: Text("KM",
                                              style: CustomTextStyles
                                                  .bodyLargeSFProDisplayGray500))
                                    ])),
                            SizedBox(height: 2.v),
                            _buildRow4(context),
                            Divider(color: appTheme.gray30001),
                            SizedBox(height: 1.v),
                            _buildSelected(context),
                            SizedBox(height: 2.v),
                            _buildMonth(context),
                            SizedBox(height: 2.v),
                            _buildRow7(context),
                            Container(
                                height: 25.v,
                                width: 274.h,
                                margin: EdgeInsets.only(right: 37.h),
                                child: Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 14.h,
                                                  top: 14.v,
                                                  right: 7.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text(
                                                            "Thu 22 Feb",
                                                            style: CustomTextStyles
                                                                .bodySmallGray500)),
                                                    Spacer(flex: 34),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("04",
                                                            style: CustomTextStyles
                                                                .sFProDisplayGray500)),
                                                    Spacer(flex: 29),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("04",
                                                            style: CustomTextStyles
                                                                .sFProDisplayGray500)),
                                                    Spacer(flex: 35),
                                                    Opacity(
                                                        opacity: 0.3,
                                                        child: Text("CM",
                                                            style: CustomTextStyles
                                                                .bodySmallGray500))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 9.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text(
                                                            "Tue 20 June",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 30),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("03",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 31),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("03",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall)),
                                                    Spacer(flex: 38),
                                                    Opacity(
                                                        opacity: 0.4,
                                                        child: Text("SM",
                                                            style: theme
                                                                .textTheme
                                                                .bodySmall))
                                                  ])))
                                    ]))
                          ])),
                  SizedBox(height: 16.v),
                  CustomOutlinedButton(
                      text: "Next",
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildRow4(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 41.h, right: 26.h),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Opacity(
                  opacity: 0.8,
                  child: Text("Fri 18 June",
                      style: CustomTextStyles
                          .titleLargeSFProDisplayGray500Regular)),
              Spacer(flex: 31),
              Opacity(
                  opacity: 0.8,
                  child: Text("59",
                      style: CustomTextStyles
                          .titleLargeSFProDisplayGray500Regular)),
              Spacer(flex: 33),
              Opacity(
                  opacity: 0.8,
                  child: Text("59",
                      style: CustomTextStyles
                          .titleLargeSFProDisplayGray500Regular)),
              Spacer(flex: 35),
              Opacity(
                  opacity: 0.8,
                  child: Text("AM",
                      style: CustomTextStyles
                          .titleLargeSFProDisplayGray500Regular))
            ])));
  }

  /// Section Widget
  Widget _buildSelected(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(left: 14.h, right: 25.h),
            child: Row(children: [
              Text("Mon 19 June",
                  style: CustomTextStyles.titleLargeSFProDisplayGray90001),
              Spacer(flex: 30),
              Text("00",
                  style: CustomTextStyles.titleLargeSFProDisplayGray90001),
              Spacer(flex: 33),
              Text("00",
                  style: CustomTextStyles.titleLargeSFProDisplayGray90001),
              Spacer(flex: 35),
              Text("PM",
                  style: CustomTextStyles.titleLargeSFProDisplayGray90001)
            ])));
  }

  /// Section Widget
  Widget _buildMonth(BuildContext context) {
    return SizedBox(
        height: 26.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: EdgeInsets.only(left: 22.h, right: 27.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                            opacity: 0.8,
                            child: Text("Tue 20 June",
                                style: CustomTextStyles
                                    .titleLargeSFProDisplayGray500Regular)),
                        Opacity(
                            opacity: 0.8,
                            child: Text("01",
                                style: CustomTextStyles
                                    .titleLargeSFProDisplayGray500Regular)),
                        Opacity(
                            opacity: 0.8,
                            child: Text("01",
                                style: CustomTextStyles
                                    .titleLargeSFProDisplayGray500Regular)),
                        Text("FM",
                            style:
                                CustomTextStyles.titleLargeSFProDisplayGray500)
                      ]))),
          Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(color: appTheme.gray30001)))
        ]));
  }

  /// Section Widget
  Widget _buildRow7(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.only(left: 29.h, right: 31.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Opacity(
                      opacity: 0.6,
                      child: Text("Weed 21 June",
                          style:
                              CustomTextStyles.bodyLargeSFProDisplayGray500)),
                  Opacity(
                      opacity: 0.6,
                      child: Text("02",
                          style:
                              CustomTextStyles.bodyLargeSFProDisplayGray500)),
                  Opacity(
                      opacity: 0.6,
                      child: Text("02",
                          style:
                              CustomTextStyles.bodyLargeSFProDisplayGray500)),
                  Opacity(
                      opacity: 0.6,
                      child: Text("LM",
                          style: CustomTextStyles.bodyLargeSFProDisplayGray500))
                ])));
  }

  /// Navigates to the calendarScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.calendarScreen);
  }
}

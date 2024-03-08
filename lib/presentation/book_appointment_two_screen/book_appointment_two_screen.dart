import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'widgets/fifty_item_widget.dart';
import 'widgets/fortysix_item_widget.dart';
import 'widgets/fiftyseven_item_widget.dart';
import 'package:mindcare_plus/widgets/custom_radio_button.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookAppointmentTwoScreen extends StatelessWidget {
  BookAppointmentTwoScreen({Key? key}) : super(key: key);

  String pleaseOnlyInclude = "";

  List<String> radioList = ["lbl_yes", "lbl_no"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 836.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  SizedBox(
                      width: double.maxFinite,
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.h, vertical: 29.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        "Are you allergic to any of the drugs listed?",
                                        style: CustomTextStyles
                                            .titleMediumGray900),
                                    SizedBox(height: 11.v),
                                    Container(
                                        width: 342.h,
                                        margin: EdgeInsets.only(right: 15.h),
                                        child: Text(
                                            "See list the medications you might be allergic to below.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(height: 1.50))),
                                    SizedBox(height: 9.v),
                                    _buildFifty(context),
                                    SizedBox(height: 45.v),
                                    Text("Do you have any medical conditions?",
                                        style: CustomTextStyles
                                            .titleMediumGray900),
                                    SizedBox(height: 11.v),
                                    Container(
                                        width: 284.h,
                                        margin: EdgeInsets.only(right: 73.h),
                                        child: Text(
                                            "Not sure? Choose yes to browse a list of conditions and diseases.",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(height: 1.50))),
                                    SizedBox(height: 9.v),
                                    _buildFortySix(context),
                                    SizedBox(height: 45.v),
                                    Text("Have you had any surgeries?",
                                        style: CustomTextStyles
                                            .titleMediumGray900),
                                    SizedBox(height: 11.v),
                                    _buildFiftySeven(context),
                                    SizedBox(height: 43.v),
                                    SizedBox(
                                        width: 353.h,
                                        child: Text(
                                            "Has anyone in your family had any medical conditions?",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .titleMediumGray900
                                                .copyWith(height: 1.56))),
                                    SizedBox(height: 6.v),
                                    SizedBox(
                                        width: 356.h,
                                        child: Text(
                                            "Please only include first-degree relatives (parents, siblings, and children)",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: theme.textTheme.bodyLarge!
                                                .copyWith(height: 1.50))),
                                    SizedBox(height: 6.v),
                                    _buildPleaseOnlyInclude(context),
                                    SizedBox(height: 18.v)
                                  ])))),
                  _buildInputField(context)
                ]))));
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
                  text: "Health Profile", margin: EdgeInsets.only(left: 58.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildFifty(BuildContext context) {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.only(right: 84.h),
            child: ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 9.v);
                },
                itemCount: 2,
                itemBuilder: (context, index) {
                  return FiftyItemWidget();
                })));
  }

  /// Section Widget
  Widget _buildFortySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 26.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 9.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return FortysixItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildFiftySeven(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 22.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 6.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return FiftysevenItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildPleaseOnlyInclude(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 121.h),
        child: Row(children: [
          CustomRadioButton(
              text: "Yes",
              value: radioList[0],
              groupValue: pleaseOnlyInclude,
              padding: EdgeInsets.symmetric(vertical: 1.v),
              onChange: (value) {
                pleaseOnlyInclude = value;
              }),
          Padding(
              padding: EdgeInsets.only(left: 125.h),
              child: CustomRadioButton(
                  text: "No",
                  value: radioList[1],
                  groupValue: pleaseOnlyInclude,
                  padding: EdgeInsets.symmetric(vertical: 1.v),
                  onChange: (value) {
                    pleaseOnlyInclude = value;
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
            decoration: AppDecoration.outlineBlack,
            child: CustomOutlinedButton(
                text: "Review Profile",
                rightIcon: Container(
                    margin: EdgeInsets.only(left: 8.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgArrowrightOnprimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                buttonTextStyle: CustomTextStyles.bodyLargePrimaryContainer,
                onPressed: () {
                  onTapReviewProfile(context);
                })));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bookAppointmentScreen when the action is triggered.
  onTapReviewProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAppointmentScreen);
  }
}

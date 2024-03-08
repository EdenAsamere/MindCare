import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title_image.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class MessesagesTwoScreen extends StatelessWidget {
  const MessesagesTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 717.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 25.v),
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: [
                            _buildSenderMessageWith(context),
                            SizedBox(height: 19.v),
                            _buildRecipientMessage(context),
                            SizedBox(height: 26.v),
                            _buildFrame(context),
                            SizedBox(height: 27.v),
                            _buildSenderMessageWith1(context),
                            SizedBox(height: 22.v)
                          ]))),
                  _buildInputField(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 80.v,
        leadingWidth: 34.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeftPrimary,
            margin: EdgeInsets.only(left: 16.h, top: 26.v, bottom: 29.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        centerTitle: true,
        title: Column(children: [
          AppbarTitleCircleimage(
              imagePath: ImageConstant.imgRectangle250x50,
              margin: EdgeInsets.symmetric(horizontal: 3.h)),
          SizedBox(height: 6.v),
          Row(children: [
            AppbarSubtitleOne(text: "Dr. Frank"),
            AppbarTitleImage(
                imagePath: ImageConstant.imgArrowRightGray8007x4,
                margin: EdgeInsets.only(left: 3.h, top: 3.v, bottom: 3.v))
          ])
        ]),
        styleType: Style.bgOutline);
  }

  /// Section Widget
  Widget _buildSenderMessageWith(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle230x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(15.h),
                margin: EdgeInsets.only(top: 92.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("Dr. Frank Ufondu",
                                        style: CustomTextStyles
                                            .titleMediumBlack900_1)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 3.v),
                                    child: Text("21 min ago",
                                        style: theme.textTheme.bodyMedium))
                              ])),
                          SizedBox(height: 9.v),
                          _buildBubbleTail(context,
                              message:
                                  "Hey man, following from our last meeting i wanted to remind you of the medications you were to takealogside the Malaria medications.")
                        ])))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(left: 40.h), child: _buildRow(context))
        ]));
  }

  /// Section Widget
  Widget _buildRecipientMessage(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: Column(children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("15 min ago",
                                    style: theme.textTheme.bodyMedium)),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Text("Nomso Onyemuwa",
                                    style:
                                        CustomTextStyles.titleMediumBlack900_1))
                          ]))),
              SizedBox(height: 9.v),
              SizedBox(
                  height: 72.v,
                  width: 306.h,
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.center,
                        child: Container(
                            margin: EdgeInsets.only(right: 4.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.h, vertical: 4.v),
                            decoration: AppDecoration.fillBlueA.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder18),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 3.v),
                                  Container(
                                      width: 273.h,
                                      margin: EdgeInsets.only(right: 4.h),
                                      child: Text(
                                          "Thanks for the reminder. I wasn’t able to get the Paracetamol but got Panadol-Extra instead. I hope no issues?",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimary
                                              .copyWith(height: 1.43)))
                                ]))),
                    CustomImageView(
                        imagePath: ImageConstant.imgUserBlueA200,
                        height: 20.v,
                        width: 16.h,
                        alignment: Alignment.bottomRight)
                  ]))
            ])),
            CustomImageView(
                imagePath: ImageConstant.imgRectangle230x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(15.h),
                margin: EdgeInsets.only(left: 12.h, top: 70.v))
          ]),
          SizedBox(height: 10.v),
          Padding(
              padding: EdgeInsets.only(right: 40.h), child: _buildRow(context))
        ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              child: SizedBox(width: 129.h, child: Divider())),
          CustomOutlinedButton(
              height: 40.v,
              width: 60.h,
              text: "Now",
              margin: EdgeInsets.only(left: 10.h),
              buttonStyle: CustomButtonStyles.outlineBlueGray,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              child: SizedBox(width: 139.h, child: Divider(indent: 10.h)))
        ]));
  }

  /// Section Widget
  Widget _buildSenderMessageWith1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgRectangle230x30,
                height: 30.adaptSize,
                width: 30.adaptSize,
                radius: BorderRadius.circular(15.h),
                margin: EdgeInsets.only(top: 32.v)),
            Expanded(
                child: Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 5.h),
                              child: Row(children: [
                                Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text("Dr. Frank Ufondu",
                                        style: CustomTextStyles
                                            .titleMediumBlack900_1)),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 16.h, top: 3.v),
                                    child: Text("2 min ago",
                                        style: theme.textTheme.bodyMedium))
                              ])),
                          SizedBox(height: 9.v),
                          _buildBubbleTail(context,
                              message:
                                  "That’s fine. Hope you’re getting better?")
                        ])))
          ]),
          SizedBox(height: 9.v),
          Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Row(children: [
                Container(
                    height: 24.v,
                    width: 32.h,
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
                    decoration: AppDecoration.fillBlueA.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.center)),
                Container(
                    height: 24.v,
                    width: 32.h,
                    margin: EdgeInsets.only(left: 4.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
                    decoration: AppDecoration.fillGray5002.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder12),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgClose,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        alignment: Alignment.center)),
                CustomImageView(
                    imagePath: ImageConstant.imgAddReaction,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 3.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 12.v),
            decoration: AppDecoration.outlineBlack900,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Container(
                  width: 332.h,
                  margin: EdgeInsets.only(right: 5.h),
                  child: Text(
                      "Yes, I am a lot better. Product designing is taking a toll on me. I need a vaction after this.. But i’m very much open to take more jobs.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyLargeBluegray70002
                          .copyWith(height: 1.50))),
              SizedBox(height: 18.v),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgAlternateEmail,
                    height: 20.adaptSize,
                    width: 20.adaptSize),
                CustomImageView(
                    imagePath: ImageConstant.imgAttachFile,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 10.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgImageBlueGray300,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 10.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgSentimentSatisfiedAlt,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 10.h)),
                CustomImageView(
                    imagePath: ImageConstant.imgMoreVert,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.only(left: 10.h)),
                Spacer(),
                CustomImageView(
                    imagePath: ImageConstant.imgSend,
                    height: 20.adaptSize,
                    width: 20.adaptSize)
              ]),
              SizedBox(height: 40.v)
            ])));
  }

  /// Common widget
  Widget _buildRow(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Container(
          height: 24.v,
          width: 32.h,
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.v),
          decoration: AppDecoration.fillGray5002
              .copyWith(borderRadius: BorderRadiusStyle.circleBorder12),
          child: CustomImageView(
              imagePath: ImageConstant.imgClose,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.center)),
      CustomImageView(
          imagePath: ImageConstant.imgAddReaction,
          height: 18.adaptSize,
          width: 18.adaptSize,
          margin: EdgeInsets.only(left: 4.h, top: 3.v, bottom: 3.v))
    ]);
  }

  /// Common widget
  Widget _buildBubbleTail(
    BuildContext context, {
    required String message,
  }) {
    return SizedBox(
        height: 32.v,
        width: 307.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  margin: EdgeInsets.only(left: 5.h),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 5.v),
                  decoration: AppDecoration.fillGray200
                      .copyWith(borderRadius: BorderRadiusStyle.circleBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 3.v),
                        Text(message,
                            style: CustomTextStyles.bodyMediumBluegray80001
                                .copyWith(color: appTheme.blueGray80001))
                      ]))),
          CustomImageView(
              imagePath: ImageConstant.imgUserGray200,
              height: 20.v,
              width: 16.h,
              alignment: Alignment.bottomLeft)
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}

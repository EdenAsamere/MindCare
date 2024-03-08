import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_elevated_button.dart';
import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import '../book_appointment_one_screen/widgets/payment_item_widget.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookAppointmentOneScreen extends StatelessWidget {
  BookAppointmentOneScreen({Key? key}) : super(key: key);

  TextEditingController inputFieldController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  TextEditingController cardNumberController = TextEditingController();

  TextEditingController inputController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 25.v),
                        decoration: AppDecoration.fillOnPrimary,
                        child: Column(children: [
                          Container(
                              width: 350.h,
                              margin: EdgeInsets.only(left: 16.h, right: 23.h),
                              child: Text(
                                  "Make payment to confirm your appointment with your doctor. ",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.bodyLarge!
                                      .copyWith(height: 1.50))),
                          SizedBox(height: 8.v),
                          _buildProgress(context),
                          SizedBox(height: 40.v),
                          _buildDoctor1(context),
                          SizedBox(height: 16.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("ORDER SUMMARY",
                                      style: CustomTextStyles
                                          .titleMediumBluegray500))),
                          SizedBox(height: 21.v),
                          _buildFrame(context),
                          SizedBox(height: 16.v),
                          _buildTile(context),
                          SizedBox(height: 32.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Use Health Insurance",
                                      style: CustomTextStyles
                                          .titleMediumGray900))),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 343.h,
                                  margin:
                                      EdgeInsets.only(left: 16.h, right: 30.h),
                                  child: Text(
                                      "Add your insurance plan for additional potential savings and discounts.",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.bodyLarge!
                                          .copyWith(height: 1.50)))),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgAddPrimary,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 10.h, bottom: 3.v),
                                        child: Text("Add Insurance",
                                            style: CustomTextStyles
                                                .titleMediumPrimary))
                                  ]))),
                          SizedBox(height: 32.v),
                          Divider(indent: 16.h, endIndent: 16.h),
                          SizedBox(height: 35.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Select Payment Method",
                                      style: CustomTextStyles
                                          .titleMediumBlack900))),
                          SizedBox(height: 25.v),
                          _buildInputField(context),
                          SizedBox(height: 25.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Card Holders Name",
                                      style: CustomTextStyles
                                          .titleSmallBluegray80001))),
                          SizedBox(height: 7.v),
                          _buildName(context),
                          SizedBox(height: 21.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Card Numbers",
                                      style: CustomTextStyles
                                          .titleSmallBluegray80001))),
                          SizedBox(height: 7.v),
                          _buildCardNumber(context),
                          SizedBox(height: 21.v),
                          _buildFrame1(context),
                          SizedBox(height: 41.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: Text("Other Services",
                                      style: CustomTextStyles
                                          .titleMediumBlack900_1))),
                          SizedBox(height: 13.v),
                          _buildPayment(context),
                          SizedBox(height: 33.v),
                          _buildInputField1(context),
                          SizedBox(height: 22.v)
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
                  text: "Nomso’s Visit", margin: EdgeInsets.only(left: 61.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildProgress(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              height: 3.v,
              width: 86.h,
              decoration: BoxDecoration(
                  color: appTheme.greenA700,
                  borderRadius: BorderRadius.circular(1.h))),
          Container(
              height: 3.v,
              width: 86.h,
              margin: EdgeInsets.only(left: 4.h),
              decoration: BoxDecoration(
                  color: appTheme.greenA700,
                  borderRadius: BorderRadius.circular(1.h))),
          Container(
              height: 3.v,
              width: 86.h,
              margin: EdgeInsets.only(left: 4.h),
              decoration: BoxDecoration(
                  color: appTheme.greenA700,
                  borderRadius: BorderRadius.circular(1.h))),
          Container(
              height: 3.v,
              width: 86.h,
              margin: EdgeInsets.only(left: 4.h),
              decoration: BoxDecoration(
                  color: appTheme.greenA700,
                  borderRadius: BorderRadius.circular(1.h)))
        ]));
  }

  /// Section Widget
  Widget _buildVideoConsultation(BuildContext context) {
    return CustomElevatedButton(
        height: 22.v, width: 119.h, text: "Video Consultation");
  }

  /// Section Widget
  Widget _buildDoctor1(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 29.v),
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
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 4.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildVideoConsultation(context),
                            SizedBox(height: 4.v),
                            Text("Dr. Frank Ufondu.",
                                style: CustomTextStyles.titleMediumBold),
                            SizedBox(height: 9.v),
                            Text(
                                "General Doctor, Hisglory Specialist Hospitals.",
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 6.v),
                            RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Today, 12:30pm ",
                                      style:
                                          CustomTextStyles.titleMediumff252a31),
                                  TextSpan(
                                      text: "(30mins)",
                                      style: CustomTextStyles.bodyLargeff667084)
                                ]),
                                textAlign: TextAlign.left)
                          ])))
            ]));
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: AppDecoration.fillGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(height: 16.v),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Text("Primary Care Visit Fee",
                                style: theme.textTheme.titleMedium),
                            SizedBox(height: 2.v),
                            Text("With Dr. Frank Ufondu",
                                style: theme.textTheme.bodyMedium),
                            SizedBox(height: 3.v),
                            Text("22nd Wed, June, 2022 at 12:30PM CAT",
                                style: theme.textTheme.bodyMedium)
                          ])),
                      Padding(
                          padding: EdgeInsets.only(left: 39.h, bottom: 39.v),
                          child: Text("₦5,700",
                              style: CustomTextStyles.titleMediumGray900_1))
                    ]),
                SizedBox(height: 16.v),
                Divider()
              ])),
          SizedBox(height: 20.v),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 12.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder8),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount ", style: theme.textTheme.titleMedium),
                      Text("₦0.00",
                          style: CustomTextStyles.titleMediumBluegray500)
                    ]),
                SizedBox(height: 19.v),
                Divider()
              ])),
          SizedBox(height: 14.v),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.customBorderBL6),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Today’s Total",
                        style: CustomTextStyles.titleMediumGray5001),
                    Text("₦5,700", style: CustomTextStyles.titleMediumGray5001)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildTile(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        padding: EdgeInsets.symmetric(vertical: 16.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder8),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgAddPrimary,
              height: 24.adaptSize,
              width: 24.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 3.v, bottom: 3.v),
              child: Text("Add Promo Code",
                  style: CustomTextStyles.titleSmallPrimary))
        ]));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: inputFieldController,
            hintText: "Credit Crad, Debit Card & E-wallet",
            prefix: Container(
                margin: EdgeInsets.fromLTRB(14.h, 13.v, 4.h, 13.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgRadioCheckbox,
                    height: 30.adaptSize,
                    width: 30.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v)));
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: nameController,
            hintText: "Card holders Name",
            prefix: Container(
                margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgAccountcircleBlueGray500,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v)));
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTextFormField(
            controller: cardNumberController,
            hintText: "0000 - 0000 - 0000 - 0000",
            prefix: Container(
                margin: EdgeInsets.fromLTRB(14.h, 18.v, 8.h, 18.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgCreditcard,
                    height: 20.adaptSize,
                    width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 56.v),
            suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 20.v, 14.h, 20.v),
                child: CustomImageView(
                    imagePath: ImageConstant.imgHelpIcon,
                    height: 16.adaptSize,
                    width: 16.adaptSize)),
            suffixConstraints: BoxConstraints(maxHeight: 56.v),
            contentPadding: EdgeInsets.symmetric(vertical: 18.v)));
  }

  /// Section Widget
  Widget _buildFrame1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card Expiriation",
                        style: CustomTextStyles.titleSmallBluegray80001),
                    SizedBox(height: 6.v),
                    CustomTextFormField(
                        width: 171.h,
                        controller: inputController,
                        hintText: "MM / YY",
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 20.v, 14.h, 20.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgHelpIcon,
                                height: 16.adaptSize,
                                width: 16.adaptSize)),
                        suffixConstraints: BoxConstraints(maxHeight: 56.v),
                        contentPadding: EdgeInsets.only(
                            left: 14.h, top: 18.v, bottom: 18.v))
                  ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("CVV",
                        style: CustomTextStyles.titleSmallBluegray80001),
                    SizedBox(height: 7.v),
                    Container(
                        width: 171.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 13.h, vertical: 16.v),
                        decoration: AppDecoration.outlinePrimaryContainer
                            .copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text("XXX",
                                      style: theme.textTheme.bodyLarge)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgHelpIcon,
                                  height: 16.adaptSize,
                                  width: 16.adaptSize,
                                  margin:
                                      EdgeInsets.only(top: 2.v, bottom: 1.v))
                            ]))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildPayment(BuildContext context) {
    return Wrap(
        runSpacing: 29.v,
        spacing: 29.h,
        children: List<Widget>.generate(6, (index) => PaymentItemWidget()));
  }

  /// Section Widget
  Widget _buildPay5700(BuildContext context) {
    return CustomOutlinedButton(
        text: "Pay ₦5,700 ",
        rightIcon: Container(
            margin: EdgeInsets.only(left: 8.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightOnprimary,
                height: 24.adaptSize,
                width: 24.adaptSize)),
        buttonStyle: CustomButtonStyles.outlineGreenA,
        onPressed: () {
          onTapPay5700(context);
        });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 42.v),
        decoration: AppDecoration.outlineBlack,
        child: _buildPay5700(context));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the popUpScreen when the action is triggered.
  onTapPay5700(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.popUpScreen);
  }
}

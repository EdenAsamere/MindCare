import 'package:mindcare_plus/widgets/app_bar/custom_app_bar.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_leading_image.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_subtitle.dart';
import 'package:mindcare_plus/widgets/app_bar/appbar_title.dart';
import 'package:mindcare_plus/widgets/custom_elevated_button.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'widgets/bookappointmentthree_item_widget.dart';
import 'package:mindcare_plus/widgets/custom_checkbox_button.dart';
import 'package:mindcare_plus/widgets/custom_radio_button.dart';
import 'package:mindcare_plus/widgets/custom_text_form_field.dart';
import 'package:mindcare_plus/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BookAppointmentThreeScreen extends StatelessWidget {
  BookAppointmentThreeScreen({Key? key}) : super(key: key);

  bool congestions = false;

  bool earpain = false;

  bool eyeredness = false;

  bool headaches = false;

  bool lossofsmell = false;

  bool lossoftaste = false;

  String pleaseConsiderAny = "";

  List<String> radioList = ["lbl_yes", "lbl_no"];

  TextEditingController medicationCounterController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1093.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 25.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: 342.h,
                                            margin:
                                                EdgeInsets.only(right: 15.h),
                                            child: Text(
                                                "Kindly provide the patient’s medical information and history.",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.bodyLarge!
                                                    .copyWith(height: 1.50))),
                                        SizedBox(height: 8.v),
                                        _buildProgress(context),
                                        SizedBox(height: 40.v),
                                        _buildNewHealthConcern(context),
                                        SizedBox(height: 45.v),
                                        Text("How long have you felt this way?",
                                            style: CustomTextStyles
                                                .titleMediumGray900),
                                        SizedBox(height: 9.v),
                                        Row(children: [
                                          _buildThree(context),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h,
                                                  top: 19.v,
                                                  bottom: 17.v),
                                              child: Text("Days",
                                                  style: CustomTextStyles
                                                      .titleMediumGray900_1)),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgIconright,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 10.h,
                                                  top: 16.v,
                                                  bottom: 16.v))
                                        ]),
                                        SizedBox(height: 45.v),
                                        Text(
                                            "Do you have any of these symptoms?",
                                            style: CustomTextStyles
                                                .titleMediumGray900),
                                        SizedBox(height: 13.v),
                                        Text("General symptoms",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 11.v),
                                        _buildBookappointmentThree(context),
                                        SizedBox(height: 19.v),
                                        Text("Head / Neck",
                                            style: theme.textTheme.bodyLarge),
                                        SizedBox(height: 13.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 87.h),
                                            child: Row(children: [
                                              _buildCongestions(context),
                                              _buildEarpain(context)
                                            ])),
                                        SizedBox(height: 11.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 66.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  _buildEyeredness(context),
                                                  _buildHeadaches(context)
                                                ])),
                                        SizedBox(height: 11.v),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(right: 56.h),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  _buildLossofsmell(context),
                                                  _buildLossoftaste(context)
                                                ])),
                                        SizedBox(height: 47.v),
                                        _buildInputField(context),
                                        SizedBox(height: 22.v)
                                      ]))),
                          _buildInputField1(context)
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
                  text: "Health Profile", margin: EdgeInsets.only(left: 58.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildProgress(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          height: 3.v,
          width: 86.h,
          decoration: BoxDecoration(
              color: appTheme.greenA700,
              borderRadius: BorderRadius.circular(1.h))),
      Container(
          height: 3.v,
          width: 86.h,
          decoration: BoxDecoration(
              color: appTheme.greenA700,
              borderRadius: BorderRadius.circular(1.h))),
      Container(
          height: 3.v,
          width: 86.h,
          decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(1.h))),
      Container(
          height: 3.v,
          width: 86.h,
          decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(1.h)))
    ]);
  }

  /// Section Widget
  Widget _buildNewHealthConcern(BuildContext context) {
    return CustomElevatedButton(
        height: 52.v,
        text: "New Health Concern",
        leftIcon: Container(
            margin: EdgeInsets.only(right: 18.h),
            child: CustomImageView(
                imagePath: ImageConstant.imgEmergency,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        buttonStyle: CustomButtonStyles.fillDeepOrange,
        buttonTextStyle: CustomTextStyles.titleMediumGray900Bold);
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return CustomOutlinedButton(
        height: 56.v,
        width: 62.h,
        text: "3",
        buttonStyle: CustomButtonStyles.outlinePrimaryContainerTL6,
        buttonTextStyle: CustomTextStyles.titleMediumGray900Bold);
  }

  /// Section Widget
  Widget _buildBookappointmentThree(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 11.v);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return BookappointmentthreeItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildCongestions(BuildContext context) {
    return CustomCheckboxButton(
        text: "Congestions",
        value: congestions,
        onChange: (value) {
          congestions = value;
        });
  }

  /// Section Widget
  Widget _buildEarpain(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 64.h),
        child: CustomCheckboxButton(
            text: "Ear pain",
            value: earpain,
            onChange: (value) {
              earpain = value;
            }));
  }

  /// Section Widget
  Widget _buildEyeredness(BuildContext context) {
    return CustomCheckboxButton(
        text: "Eye redness",
        value: eyeredness,
        onChange: (value) {
          eyeredness = value;
        });
  }

  /// Section Widget
  Widget _buildHeadaches(BuildContext context) {
    return CustomCheckboxButton(
        text: "Headaches",
        value: headaches,
        onChange: (value) {
          headaches = value;
        });
  }

  /// Section Widget
  Widget _buildLossofsmell(BuildContext context) {
    return CustomCheckboxButton(
        text: "Loss of smell",
        value: lossofsmell,
        onChange: (value) {
          lossofsmell = value;
        });
  }

  /// Section Widget
  Widget _buildLossoftaste(BuildContext context) {
    return CustomCheckboxButton(
        text: "Loss of taste",
        value: lossoftaste,
        onChange: (value) {
          lossoftaste = value;
        });
  }

  /// Section Widget
  Widget _buildMedicationCounter(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 1.v),
        child: CustomTextFormField(
            width: 230.h,
            controller: medicationCounterController,
            hintText: "Medication 1",
            hintStyle: CustomTextStyles.bodyLargeBluegray80001,
            textInputAction: TextInputAction.done,
            borderDecoration:
                TextFormFieldStyleHelper.underLinePrimaryContainer,
            filled: false));
  }

  /// Section Widget
  Widget _buildInputField(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Are you currently taking any medications?",
          style: CustomTextStyles.titleMediumGray900),
      SizedBox(height: 11.v),
      SizedBox(
          width: 358.h,
          child: Text(
              "Please consider any medications you are currenty taking, including those taken in a regular basis.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodyLarge!.copyWith(height: 1.50))),
      SizedBox(height: 16.v),
      Padding(
          padding: EdgeInsets.only(left: 10.h, right: 111.h),
          child: Row(children: [
            CustomRadioButton(
                text: "Yes",
                value: radioList[0],
                groupValue: pleaseConsiderAny,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                onChange: (value) {
                  pleaseConsiderAny = value;
                }),
            Padding(
                padding: EdgeInsets.only(left: 125.h),
                child: CustomRadioButton(
                    text: "No",
                    value: radioList[1],
                    groupValue: pleaseConsiderAny,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      pleaseConsiderAny = value;
                    }))
          ])),
      SizedBox(height: 19.v),
      Text("List medications below:", style: theme.textTheme.bodyLarge),
      SizedBox(height: 21.v),
      Padding(
          padding: EdgeInsets.only(right: 5.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            _buildMedicationCounter(context),
            CustomDropDown(
                width: 105.h,
                icon: Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImageView(
                        imagePath: ImageConstant.imgIconright,
                        height: 24.adaptSize,
                        width: 24.adaptSize)),
                hintText: "How Long",
                items: dropdownItemList,
                contentPadding: EdgeInsets.symmetric(vertical: 1.v),
                onChanged: (value) {})
          ])),
      SizedBox(height: 17.v),
      Row(children: [
        CustomImageView(
            imagePath: ImageConstant.imgAddBlueGray80001,
            height: 24.adaptSize,
            width: 24.adaptSize),
        Padding(
            padding: EdgeInsets.only(left: 10.h, bottom: 3.v),
            child: Text("Add new medication",
                style: CustomTextStyles.bodyLargeBluegray80001))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomOutlinedButton(
        text: "Continue",
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Section Widget
  Widget _buildInputField1(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 42.v),
            decoration: AppDecoration.outlineBlack,
            child: _buildContinue(context)));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the bookAppointmentTwoScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookAppointmentTwoScreen);
  }
}

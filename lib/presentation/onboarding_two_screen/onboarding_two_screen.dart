import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class OnboardingTwoScreen extends StatelessWidget {
  const OnboardingTwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 844.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 55.v,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLinePattern,
                height: 200.adaptSize,
                width: 200.adaptSize,
                radius: BorderRadius.circular(
                  100.h,
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 292.v,
                      width: 273.h,
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgHandsAlarm,
                            height: 274.v,
                            width: 273.h,
                            alignment: Alignment.topCenter,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup1LightBlue200,
                            height: 292.v,
                            width: 262.h,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 1.h),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 90.v),
                    Container(
                      width: 349.h,
                      margin: EdgeInsets.symmetric(horizontal: 4.h),
                      child: Text(
                        "Communicate in the best & effective way possible.",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.titleLargeBold.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 14.v),
                    Container(
                      width: 327.h,
                      margin: EdgeInsets.symmetric(horizontal: 15.h),
                      child: Text(
                        "Time & health are two precious assets that we don’t compromise on. ",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge!.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 30.v),
                    CustomOutlinedButton(
                      buttonStyle: CustomButtonStyles.fillBlue,
                      text: "Sign In",
                    ),
                    SizedBox(height: 12.v),
                    CustomOutlinedButton(
                      text: "Create an account",
                      buttonStyle: CustomButtonStyles.outlinePrimaryContainer,
                      buttonTextStyle: CustomTextStyles.titleMediumGray900_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

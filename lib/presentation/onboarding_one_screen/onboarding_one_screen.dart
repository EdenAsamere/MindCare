import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mindcare_plus/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 797.v,
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
                    CustomImageView(
                      imagePath: ImageConstant.imgOpenPeepsBust,
                      height: 246.v,
                      width: 273.h,
                    ),
                    SizedBox(height: 64.v),
                    SizedBox(
                      height: 24.v,
                      child: AnimatedSmoothIndicator(
                        activeIndex: 0,
                        count: 2,
                        effect: ScrollingDotsEffect(
                          activeDotColor: Color(0X1212121D),
                          dotHeight: 24.v,
                        ),
                      ),
                    ),
                    SizedBox(height: 35.v),
                    Container(
                      width: 332.h,
                      margin: EdgeInsets.symmetric(horizontal: 12.h),
                      child: Text(
                        "Video consult top doctors from the comfort of your home.",
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
                      width: 326.h,
                      margin: EdgeInsets.only(
                        left: 15.h,
                        right: 16.h,
                      ),
                      child: Text(
                        "These are Specialists in their respective fields, which includes Brain & Nervous system",
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
              CustomImageView(
                imagePath: ImageConstant.imgGroup1,
                height: 295.v,
                width: 265.h,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 9.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

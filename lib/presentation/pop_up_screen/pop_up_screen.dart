import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class PopUpScreen extends StatelessWidget {
  const PopUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 358.h,
          padding: EdgeInsets.symmetric(
            horizontal: 19.h,
            vertical: 26.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle2120x120,
                height: 120.adaptSize,
                width: 120.adaptSize,
                radius: BorderRadius.circular(
                  60.h,
                ),
              ),
              SizedBox(height: 17.v),
              Container(
                width: 299.h,
                margin: EdgeInsets.only(
                  left: 10.h,
                  right: 9.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Your upcoming virtual meeting with ",
                        style: CustomTextStyles.headlineSmallff0f1728,
                      ),
                      TextSpan(
                        text: "Dr. Frank Ufondu ",
                        style: CustomTextStyles.headlineSmallff0040ddMedium,
                      ),
                      TextSpan(
                        text: "has been scheduled",
                        style: CustomTextStyles.headlineSmallff0f1728,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 17.v),
              Text(
                "22nd Wednesday, June 2022 at 12:30PM CAT",
                style: theme.textTheme.titleSmall,
              ),
              SizedBox(height: 51.v),
              _buildTile(context),
              SizedBox(height: 8.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildTile1(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildTile(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 14.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillDeepPurple,
              child: CustomImageView(
                imagePath: ImageConstant.imgVideocam,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 4.v,
            ),
            child: Column(
              children: [
                Text(
                  "Test your device prior to visit",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 208.h,
                  child: Text(
                    "Make sure video, audio and internet connections are working.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 22.v,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTile1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 29.h,
        right: 29.h,
        bottom: 39.v,
      ),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10.v,
              bottom: 14.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillTealTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgCalendarMonthTeal700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Schedule an Appointment",
                  style: theme.textTheme.titleMedium,
                ),
                Container(
                  width: 190.h,
                  margin: EdgeInsets.only(top: 6.v),
                  child: Text(
                    "Schedule an appointment with available doctors.",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      height: 1.43,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 18.v,
              bottom: 22.v,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsGray900,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Configure tyour account your way",
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class ReasonsItemWidget extends StatelessWidget {
  const ReasonsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillDeepOrange,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 44.adaptSize,
              width: 44.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillRed,
              child: CustomImageView(
                imagePath: ImageConstant.imgEmergency,
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 87.h,
              child: Text(
                "New Health Concern",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumGray900Bold.copyWith(
                  height: 1.50,
                ),
              ),
            ),
            SizedBox(height: 1.v),
            Text(
              "Find a Doctor",
              style: CustomTextStyles.labelLargeBluegray70002,
            ),
            SizedBox(height: 26.v),
          ],
        ),
      ),
    );
  }
}

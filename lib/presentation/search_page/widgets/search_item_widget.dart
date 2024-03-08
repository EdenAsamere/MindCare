import 'package:mindcare_plus/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart' hide SearchController;
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class SearchItemWidget extends StatelessWidget {
  SearchItemWidget({
    Key? key,
    this.onTapComponent,
  }) : super(
          key: key,
        );

  VoidCallback? onTapComponent;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapComponent!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillPurple50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 47.adaptSize,
              width: 47.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleTL23,
              child: CustomImageView(
                imagePath: ImageConstant.imgEvent,
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(
              width: 99.h,
              child: Text(
                "Book an Appointment",
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
            SizedBox(height: 22.v),
          ],
        ),
      ),
    );
  }
}

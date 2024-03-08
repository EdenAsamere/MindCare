import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

// ignore: must_be_immutable
class PaymentItemWidget extends StatelessWidget {
  const PaymentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        top: 12.v,
        right: 22.h,
        bottom: 12.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        "Pay",
        style: TextStyle(
          color: appTheme.blueGray80001,
          fontSize: 16.fSize,
          fontFamily: 'GT Walsheim Pro',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        imagePath: ImageConstant.imgUserIndigo900,
        height: 17.v,
        width: 14.h,
        margin: EdgeInsets.only(right: 12.h),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
      shadowColor: appTheme.gray9000c,
      elevation: 2,
      selectedColor: theme.colorScheme.onPrimary.withOpacity(1),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          22.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}

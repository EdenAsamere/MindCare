import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.lightBlue5001,
                  borderRadius: BorderRadius.circular(20.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: appTheme.blueGray300,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal800,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillTealTL20 => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple5001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple5001,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow100,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        borderRadius: BorderRadius.circular(25.h),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillLightBlueTL22 => BoxDecoration(
        color: appTheme.lightBlue100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillIndigoTL22 => BoxDecoration(
        color: appTheme.indigo5001,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber200,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillDeepPurpleTL23 => BoxDecoration(
        color: appTheme.deepPurple50,
        borderRadius: BorderRadius.circular(23.h),
      );
  static BoxDecoration get fillLightBlueTL221 => BoxDecoration(
        color: appTheme.lightBlue10001,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get radiusTL12 => BoxDecoration(
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray5001,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            23.h,
          ),
          topRight: Radius.circular(
            22.h,
          ),
          bottomLeft: Radius.circular(
            23.h,
          ),
          bottomRight: Radius.circular(
            22.h,
          ),
        ),
      );
  static BoxDecoration get fillGrayTL22 => BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadius.circular(22.h),
      );
  static BoxDecoration get fillPurpleTL22 => BoxDecoration(
        color: appTheme.purple50,
        borderRadius: BorderRadius.circular(22.h),
      );
}

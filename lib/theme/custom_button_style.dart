import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillDeepOrange => ElevatedButton.styleFrom(
        backgroundColor: appTheme.deepOrange50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray20001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillGrayE => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray6001e,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get fillBlue => ElevatedButton.styleFrom(
        backgroundColor: appTheme.blue80001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlueGray => OutlinedButton.styleFrom(
        backgroundColor: Colors.transparent,
        side: BorderSide(
          color: appTheme.blueGray5001,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  static ButtonStyle get outlineGreenA => OutlinedButton.styleFrom(
        backgroundColor: appTheme.greenA700,
        side: BorderSide(
          color: appTheme.greenA700,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get outlineLightBlue => OutlinedButton.styleFrom(
        backgroundColor: appTheme.lightBlue5001,
        side: BorderSide(
          color: appTheme.lightBlue200,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
              6.h,
            ),
          ),
        ),
      );
  static ButtonStyle get outlinePrimaryContainer => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primaryContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.h),
        ),
      );
  static ButtonStyle get outlinePrimaryContainerTL12 =>
      OutlinedButton.styleFrom(
        backgroundColor: appTheme.blue50,
        side: BorderSide(
          color: theme.colorScheme.primaryContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.h),
        ),
      );
  static ButtonStyle get outlinePrimaryContainerTL6 => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        side: BorderSide(
          color: theme.colorScheme.primaryContainer,
          width: 1,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}

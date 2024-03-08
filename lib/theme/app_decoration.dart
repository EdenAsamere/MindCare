import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlue => BoxDecoration(
        color: appTheme.blue5001,
      );
  static BoxDecoration get fillBlueA => BoxDecoration(
        color: appTheme.blueA200,
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray5001,
      );
  static BoxDecoration get fillDeepOrange => BoxDecoration(
        color: appTheme.deepOrange50,
      );
  static BoxDecoration get fillDeepPurple => BoxDecoration(
        color: appTheme.deepPurple5001,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray100,
      );
  static BoxDecoration get fillGray200 => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillGray5002 => BoxDecoration(
        color: appTheme.gray5002,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo50,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue5001,
      );
  static BoxDecoration get fillLightblue50 => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static BoxDecoration get fillOrange => BoxDecoration(
        color: appTheme.orange50,
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink50,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPurple => BoxDecoration(
        color: appTheme.purple5001,
      );
  static BoxDecoration get fillPurple50 => BoxDecoration(
        color: appTheme.purple50,
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red100,
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal50,
      );
  static BoxDecoration get fillYellow => BoxDecoration(
        color: appTheme.yellow100,
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: appTheme.gray50Ef,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.3),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.gray5001,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.3),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -0.5,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(0.2),
        border: Border.all(
          color: appTheme.black900,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray5001,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.blueGray5001,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineBlueGrayF => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray8000f,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.gray800.withOpacity(0.36),
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray9000c,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              1,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer2 => BoxDecoration(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        border: Border(
          left: BorderSide(
            color: theme.colorScheme.primaryContainer,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimaryContainer3 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primaryContainer,
          width: 1.h,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder100 => BorderRadius.circular(
        100.h,
      );
  static BorderRadius get circleBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get circleBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get circleBorder22 => BorderRadius.circular(
        22.h,
      );
  static BorderRadius get circleBorder25 => BorderRadius.circular(
        25.h,
      );
  static BorderRadius get circleBorder60 => BorderRadius.circular(
        60.h,
      );

  // Custom borders
  static BorderRadius get customBorderBL6 => BorderRadius.vertical(
        bottom: Radius.circular(6.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder1 => BorderRadius.circular(
        1.h,
      );
  static BorderRadius get roundedBorder18 => BorderRadius.circular(
        18.h,
      );
  static BorderRadius get roundedBorder195 => BorderRadius.circular(
        195.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;

import 'package:flutter/material.dart';
import 'package:mindcare_plus/core/utils/size_utils.dart';
import 'package:mindcare_plus/theme/theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeBluegray70002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray70002,
      );
  static get bodyLargeBluegray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyLargeGray5001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray5001,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeOnPrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeSFProDisplayGray500 =>
      theme.textTheme.bodyLarge!.sFProDisplay.copyWith(
        color: appTheme.gray500.withOpacity(0.56),
        fontSize: 17.fSize,
      );
  static get bodyLargeff0040dd => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF0040DD),
      );
  static get bodyLargeff667084 => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF667084),
      );
  static get bodyMediumBlue600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blue600,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodySmallGTWalsheimProBlack900 =>
      theme.textTheme.bodySmall!.gTWalsheimPro.copyWith(
        color: appTheme.black900,
      );
  static get bodySmallGTWalsheimProIndigo500 =>
      theme.textTheme.bodySmall!.gTWalsheimPro.copyWith(
        color: appTheme.indigo500,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500.withOpacity(0.46),
        fontSize: 9.fSize,
      );
  // Display text style
  static get displaySmallOnPrimary => theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  // Headline text style
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallff0040dd => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0040DD),
      );
  static get headlineSmallff0040ddMedium =>
      theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0040DD),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallff0f1728 => theme.textTheme.headlineSmall!.copyWith(
        color: Color(0XFF0F1728),
        fontWeight: FontWeight.w500,
      );
  // Label text style
  static get labelLargeBluegray70002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray70002,
      );
  static get labelLargeIndigo700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.indigo700,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // S text style
  static get sFProDisplayGray500 => TextStyle(
        color: appTheme.gray500.withOpacity(0.46),
        fontSize: 6.fSize,
        fontWeight: FontWeight.w400,
      ).sFProDisplay;
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeSFProDisplayGray500 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray500,
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSFProDisplayGray500Regular =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray500.withOpacity(0.64),
        fontSize: 21.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSFProDisplayGray90001 =>
      theme.textTheme.titleLarge!.sFProDisplay.copyWith(
        color: appTheme.gray90001,
        fontSize: 23.fSize,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90018 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray500,
      );
  static get titleMediumBluegray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray70002,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleMediumBluegray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800.withOpacity(0.6),
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
      );
  static get titleMediumGray900Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900Bold18 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumInterGray900 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 18.fSize,
      );
  static get titleMediumOnPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimary_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleMediumPrimary17 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
      );
  static get titleMediumff0040dd => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF0040DD),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumff252a31 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF252A31),
      );
  static get titleSmallBluegray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleSmallGTWalsheimBluegray80001 =>
      theme.textTheme.titleSmall!.gTWalsheim.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleSmallPrimaryBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get gTWalsheim {
    return copyWith(
      fontFamily: 'GT Walsheim',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProDisplay {
    return copyWith(
      fontFamily: 'SF Pro Display',
    );
  }

  TextStyle get gTWalsheimPro {
    return copyWith(
      fontFamily: 'GT Walsheim Pro',
    );
  }
}

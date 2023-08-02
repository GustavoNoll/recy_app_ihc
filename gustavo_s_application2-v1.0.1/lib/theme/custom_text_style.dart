import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeRobotoMonoWhiteA700 =>
      theme.textTheme.bodyLarge!.robotoMono.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLargeLight17 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeSFProTextGray8005b =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.gray8005b.withOpacity(0.6),
        fontSize: getFontSize(
          17,
        ),
      );
  static get bodyLargeBlue800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blue800,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          19,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeSFProTextLightblueA700 =>
      theme.textTheme.bodyLarge!.sFProText.copyWith(
        color: appTheme.lightBlueA700,
        fontSize: getFontSize(
          17,
        ),
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMediumInterIndigoA700 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.indigoA700,
        fontWeight: FontWeight.w700,
      );
  // Headline text style
  static get headlineLargeLight => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get robotoMono {
    return copyWith(
      fontFamily: 'Roboto Mono',
    );
  }
}

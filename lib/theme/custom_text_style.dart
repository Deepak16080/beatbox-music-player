import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  // Headline text style
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeBlue5003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blue5003,
      );
  static get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
  static get titleMedium18_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );
}

extension on TextStyle {
  TextStyle get gilroy {
    return copyWith(
      fontFamily: 'Gilroy',
    );
  }
}

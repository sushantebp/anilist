import 'package:flutter/material.dart';

/// Extension on [BuildContext] to provide easy access to
/// theme-related properties such as [ColorScheme] and [TextTheme].
extension ThemeExtension on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
}

/// Extension on [BuildContext] to provide convenient access
/// to screen size information from [MediaQuery].
extension ScreenSizeExtension on BuildContext {
  double get screenWidth => MediaQuery.of(this).size.width;
  double get screenHeight => MediaQuery.of(this).size.height;
}

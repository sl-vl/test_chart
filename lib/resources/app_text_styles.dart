import 'package:flutter/widgets.dart';
import 'package:test_chart/resources/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle get b14 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get b16 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );

  static TextStyle get n16 => const TextStyle(
        fontSize: 16,
      );

  static TextStyle get n14 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get b22 => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get b30 => const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get n34 => const TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w300,
      );
}

extension Colorized on TextStyle {
  TextStyle get black => copyWith(color: AppColors.black);

  TextStyle get white => copyWith(color: AppColors.white);

  TextStyle get green => copyWith(color: AppColors.green);

  TextStyle get blue => copyWith(color: AppColors.blue);

  TextStyle get grey => copyWith(color: AppColors.grey);
}

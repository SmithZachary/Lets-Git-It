import "dart:ui";
import 'package:flutter/material.dart';

abstract class AppColors {
  static const primary = Color(0xFF0F7173);
  static const alerts = Color(0xFFDE6156);
  static const warnings = Color(0xFFFBC933);
  static const textDark = Color(0xFFE0E0E0);
  static const iconDark = Color(0xFFE0E0E0);
  static final textDarkRead = Color(0XFFE0E0E0).withOpacity(0.65);
  static const textSecondaryDark = Color(0xFF979797);
  static const darkBackground = Color(0xFF1B1D21);
  static const onDarkBackground = Color(0xFF1E2228);
  static const stroke = Color(0xFF292929);
  static const textLight = Color(0xFF121212);
  static final textLightRead = Color(0xFF121212).withOpacity(0.5);
  static const textSecondaryLight = Color(0xFF3A3A3A);
  static const iconLight = Color(0xFF3A3A3A);
  static const lightBackground = Color(0xFFFFFFFF);
  static const onLightBackground = Color(0xFFF0F0F0);
  static const strokeLight = Color(0xFF878787);
  static const shade = Color(0xFFF0F0F0);
}

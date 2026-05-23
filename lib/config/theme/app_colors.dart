import 'package:flutter/material.dart';

/// Application Color Palette
/// 
/// Centralized color definitions following African startup aesthetics
/// with green/blue gradient branding.
class AppColors {
  // Private constructor
  AppColors._();

  // Primary Colors (Green/Blue Gradient)
  static const Color primaryGreen = Color(0xFF16A34A);
  static const Color primaryBlue = Color(0xFF0F766E);
  static const Color accentGreen = Color(0xFF22C55E);
  static const Color accentBlue = Color(0xFF06B6D4);

  // Secondary Colors
  static const Color secondaryGreen = Color(0xFF10B981);
  static const Color secondaryBlue = Color(0xFF0891B2);

  // Background Colors
  static const Color backgroundColor = Color(0xFFFAFAFA);
  static const Color cardBackground = Color(0xFFFFFFFF);
  static const Color inputBackground = Color(0xFFF3F4F6);
  static const Color darkBackgroundColor = Color(0xFF111827);
  static const Color darkCardBackground = Color(0xFF1F2937);
  static const Color darkInputBackground = Color(0xFF374151);

  // Text Colors
  static const Color darkText = Color(0xFF111827);
  static const Color lightText = Color(0xFFF9FAFB);
  static const Color secondaryText = Color(0xFF6B7280);
  static const Color darkSecondaryText = Color(0xFFD1D5DB);
  static const Color hintColor = Color(0xFF9CA3AF);
  static const Color darkHintColor = Color(0xFF6B7280);

  // Status Colors
  static const Color successColor = Color(0xFF10B981);
  static const Color warningColor = Color(0xFFF59E0B);
  static const Color errorColor = Color(0xFFEF4444);
  static const Color infoColor = Color(0xFF3B82F6);

  // Border Colors
  static const Color borderColor = Color(0xFFE5E7EB);
  static const Color darkBorderColor = Color(0xFF4B5563);
  static const Color focusBorderColor = primaryGreen;

  // Additional Colors
  static const Color shadowColor = Color(0x1A000000);
  static const Color overlayColor = Color(0x80000000);
  static const Color dividerColor = Color(0xFFE5E7EB);
  static const Color darkDividerColor = Color(0xFF374151);

  // Gradient Colors
  static LinearGradient get primaryGradient => LinearGradient(
        colors: [primaryGreen, primaryBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  static LinearGradient get accentGradient => LinearGradient(
        colors: [accentGreen, accentBlue],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  // Status Gradients
  static LinearGradient get successGradient => LinearGradient(
        colors: [successColor, const Color(0xFF059669)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );
}

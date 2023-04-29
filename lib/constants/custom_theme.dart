import 'package:flutter/material.dart' show Color, TextStyle, FontWeight;
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  static Color textColor = const Color(0xFFAFB6BE);
  static Color hightlightColor = const Color(0xFFFF5C0A);
  static Color mainColor = const Color(0xFF202428);
  static Color secondaryColor = const Color(0xFF2B2F35);

  static TextStyle appDefaultTextStyle = GoogleFonts.notoSans(
    color: CustomTheme.textColor,
    fontSize: 2.5.sp,
    fontWeight: FontWeight.w400,
  );
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class CustomTheme {
  static Color textColor = const Color(0xFFAFB6BE);
  static Color hightlightColor = const Color(0xFFFF5C0A);
  // static Color hightlightColor = const Color(0xFFBADA55);
  static Color mainColor = const Color(0xFF202428);
  static Color secondaryColor = const Color(0xFF2B2F35);

  static TextStyle appDefaultTextStyle = GoogleFonts.lato(
    color: CustomTheme.textColor,
    fontSize: 2.5.sp,
    fontWeight: FontWeight.w400,
  );

  static OutlineInputBorder inputBorder() => OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
        borderSide: BorderSide(
          color: mainColor,
          width: 1,
        ),
      );

  static OutlineInputBorder focusBorder() => const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(
          width: 0.5,
        ),
      );
}

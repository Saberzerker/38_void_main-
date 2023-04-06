import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';

class CustomTheme {
  var baseTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: KPrimaryColor,
    primaryColor: KPrimaryColor,
    appBarTheme: AppBarTheme(
      //height for mobiles and tablets
      toolbarHeight: SizerUtil.deviceType == DeviceType.tablet ? 9.h : 7.h,
      backgroundColor: KPrimaryColor,
      titleTextStyle: GoogleFonts.lato(
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: 2.0),
      iconTheme: IconThemeData(
        color: KOtherColor,
        size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 18.sp,
      ),
      elevation: 0, //input decoration theme for the app
    ),
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
          //Label style for formField
          fontSize: 11.sp,
          color: KTextlightColor,
          fontWeight: FontWeight.w400),
      hintStyle: //HintStyle
          TextStyle(fontSize: 16.0, color: KTextBlackColor, height: 0.5),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: KTextlightColor, width: 0.7),
      ),
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: KTextlightColor),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: KTextlightColor),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: KTextlightColor),
      ),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: KErrorBorderColor, width: 1.2),
      ),
      focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: KErrorBorderColor, width: 1.2),
      ),
    ),
    textTheme: GoogleFonts.latoTextTheme().copyWith(
      headlineSmall: GoogleFonts.chewy(
        fontSize: SizerUtil.deviceType == DeviceType.tablet ? 45.sp : 40.sp,
      ),
      bodyLarge: const TextStyle(
          color: KTextWhiteColor, fontSize: 29.0, fontWeight: FontWeight.bold),
      bodyMedium: const TextStyle(
        color: KTextWhiteColor,
        fontSize: 28.0,
      ),
      titleMedium: TextStyle(
          color: KTextWhiteColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 14.sp : 17.sp,
          fontWeight: FontWeight.w700),
      titleSmall: GoogleFonts.lato(
          color: KTextWhiteColor,
          fontSize: SizerUtil.deviceType == DeviceType.tablet ? 12.sp : 13.sp,
          fontWeight: FontWeight.w300),
    ),
  );
}

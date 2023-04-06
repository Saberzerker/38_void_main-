import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

//Hex/#code of colors to ARGB values
Color hexToColor(String hexString, {String alphaChannel = 'FF'}) {
  return Color(int.parse(hexString.replaceFirst('#', '0x$alphaChannel')));
}

//Colors
Color KPrimaryColor = hexToColor('#032CF3');
Color KSecondaryColor = hexToColor('#FC0029');
Color KTextBlackColor = hexToColor('#1C1C1C');
const Color KTextWhiteColor = Color(0xFFFFFFFF);
const Color KOtherColor = Color(0xFFF4F6F7);
const Color KContainerColor = Color(0xFF777777);
Color KTextlightColor = hexToColor('#54616C');
const Color KErrorBorderColor = Color(0xFFE74C3C);

//
const KDefaultPadding = 20.0;

const sizedBox = SizedBox(
  height: KDefaultPadding,
);

const KWidthSizedBox = SizedBox(
  width: KDefaultPadding,
);

const KhaldSizedBox = SizedBox(height: KDefaultPadding / 2);

final KTopBorderRadius = BorderRadius.only(
  topLeft: Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  topRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final KBottomRadius = BorderRadius.only(
  bottomLeft:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
  bottomRight:
      Radius.circular(SizerUtil.deviceType == DeviceType.tablet ? 40 : 20),
);

final KInputTextStyle = GoogleFonts.lato(
  color: KTextBlackColor,
  fontSize: 11.sp,
  fontWeight: FontWeight.w500,
);

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

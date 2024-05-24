import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/get_responsive_font_size.dart';

abstract class AppStyles {
  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: const Color(0xFFFFFFFF),
      fontFamily: 'Montserrat',
    );
  }
}



//   static TextStyle styleRegular16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w400,
//     color: const Color(0xFF064060),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleMedium16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w500,
//     color: const Color(0xFF064060),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleBold16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w700,
//     color: const Color(0xFF4EB7F2),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleSemiBold16 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 16),
//     fontWeight: FontWeight.w600,
//     color: const Color(0xFF064060),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleMedium20 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontWeight: FontWeight.w500,
//     color: const Color(0xFFAAAAAA),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleSemiBold20 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 20),
//     fontWeight: FontWeight.w600,
//     color: const Color(0xFF064060),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleRegular12 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 12),
//     fontWeight: FontWeight.w400,
//     color: const Color(0xFFAAAAAA),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleSemiBold24 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 24),
//     fontWeight: FontWeight.w600,
//     color: const Color(0xFF4EB7F2),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleRegular14 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 14),
//     fontWeight: FontWeight.w400,
//     color: const Color(0xFFAAAAAA),
//     fontFamily: 'Montserrat',
//   );
//   static TextStyle styleSemiBold18 = TextStyle(
//     fontSize: getResponsiveFontSize(fontSize: 18),
//     fontWeight: FontWeight.w600,
//     color: const Color(0xFFFFFFFF),
//     fontFamily: 'Montserrat',
//   );
// }

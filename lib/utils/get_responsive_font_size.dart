import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.displays.first.size.width;
  // var devicePixelRatio = dispatcher.displays.first.devicePixelRatio;
  // double width = physicalWidth * devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tabletSize) {
    return width / 550;
  } else if (width < SizeConfig.desktopSize) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}

import 'package:flutter/material.dart';

class SizeConfig {
  static const double desktopSize = 1200;
  static const double tabletSize = 800;

  static late double height, width;
  static  init(BuildContext context){
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
  }
}

import 'package:flutter/material.dart';
import 'color_manager.dart';

import 'font_manager.dart';

TextStyle _getTextStyle(
    double fontSize, FontWeight fontWeight, Color color, double? height) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.defaultFontFamily,
    color: color,
    fontWeight: fontWeight,
    height: height ?? 1,
  );
}

// light style

TextStyle getLightStyle({double? fontSize, Color? color, double? height}) {
  return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.light,
      color ?? ColorManager.black, height);
}

// regular style

TextStyle getRegularStyle({double? fontSize, Color? color, double? height}) {
  return _getTextStyle(
    fontSize ?? FontSize.s12,
    FontWeightManager.regular,
    color ?? ColorManager.black,
    height,
  );
}

// bold style

TextStyle getBoldStyle({double? fontSize, Color? color, double? height}) {
  return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.bold,
      color ?? ColorManager.black, height);
}

// semi bold style

TextStyle getSemiBoldStyle({double? fontSize, Color? color, double? height}) {
  return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.semiBold,
      color ?? ColorManager.black, height);
}

// medium style

TextStyle getMediumStyle({double? fontSize, Color? color, double? height}) {
  return _getTextStyle(fontSize ?? FontSize.s12, FontWeightManager.medium,
      color ?? ColorManager.black, height);
}

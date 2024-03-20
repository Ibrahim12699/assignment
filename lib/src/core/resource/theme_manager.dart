import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'style_manager.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // app bar theme
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorManager.transparent,
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: ColorManager.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    ),

    // elevated button them
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // primary: ColorManager.blue,
        textStyle:
            getBoldStyle(color: ColorManager.white, fontSize: FontSize.s18),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
    ),

    // get text theme

    textTheme: TextTheme(
      titleMedium:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s14),
      titleSmall:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s22),
      titleLarge:
          getBoldStyle(color: ColorManager.white, fontSize: FontSize.s22),
      bodySmall:
          getRegularStyle(color: ColorManager.grey, fontSize: FontSize.s10),
      bodyMedium: getSemiBoldStyle(
          color: ColorManager.lightGrey, fontSize: FontSize.s14),
      bodyLarge:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s37),
    ),

    // input decoration theme (text form field)
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: ColorManager.backGroundColor,
      elevation: 0.0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorManager.white,
      isDense: true,

      hintStyle: getRegularStyle(
        color: ColorManager.black,
        fontSize: FontSize.s18,
      ),

      errorStyle: getRegularStyle(
        color: ColorManager.red,
      ),

      // enabled border style

      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5.w, color: ColorManager.white),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),

      // focused border style
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 1.5.w, color: ColorManager.white),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),

      // error border style
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.red, width: 1.5.w),
          borderRadius: BorderRadius.all(Radius.circular(10.r))),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1.5.w, color: ColorManager.red),
        borderRadius: BorderRadius.all(
          Radius.circular(8.r),
        ),
      ),
    ),
  );
}

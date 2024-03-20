import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameText extends StatelessWidget {
  const UserNameText({
    super.key,
    this.username,
  });

  final String? username;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 4.h),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(
          text: getASalute(),
          style: getLightStyle(
            color: ColorManager.white,
            fontSize: 24.spMin,
          ),
        ),
        TextSpan(
          text: username ?? '',
          style: getSemiBoldStyle(
            color: ColorManager.white,
            fontSize: 24.spMin,
          ),
        ),
      ])),
    );
  }
}

String getASalute() {
  String salutation = '';
  TimeOfDay time = TimeOfDay.now();
  if (time.hour >= 0 && time.hour < 12) {
    salutation = StringsManager.goodMorning;
  } else if (time.hour >= 12 && time.hour < 16) {
    salutation = StringsManager.goodAfternoon;
  } else {
    salutation = StringsManager.goodEvening;
  }
  return '$salutation,\n';
}

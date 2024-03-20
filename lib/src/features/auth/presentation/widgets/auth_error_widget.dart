import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AuthErrorWidget extends StatelessWidget {
  const AuthErrorWidget({
    super.key,
    this.visible,
    this.onCloseTap,
    this.errorText,
  });

  final bool? visible;
  final Function? onCloseTap;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return _buildWidget();
  }

  Widget _buildWidget() {
    return Visibility(
      visible: visible ?? false,
      child: Container(
        padding: EdgeInsetsDirectional.only(
          end: 20.w,
          start: 10.w,
        ),
        margin: EdgeInsets.only(bottom: 13.h),
        decoration: BoxDecoration(
          color: ColorManager.red,
          borderRadius: BorderRadius.circular(9.r),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildIcon(),
            _buildText(),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Text(
          errorText ?? StringsManager.defaultError,
          style: const TextStyle(
            color: ColorManager.white,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return IconButton(
      onPressed: () {
        if (onCloseTap != null) {
          onCloseTap!();
        }
      },
      icon: SvgPicture.asset(
        AssetsManager.closeIc,
      ),
    );
  }
}

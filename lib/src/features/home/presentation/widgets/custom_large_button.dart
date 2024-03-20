import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLargeButton extends StatelessWidget {
  const CustomLargeButton({
    super.key,
    required this.text,
    this.onTap,
  });

  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 0.025.sh,
          horizontal: 30.w,
        ),
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.w),
          color: ColorManager.lightPurple,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            _buildText(context),
            _buildIcon(context),
          ],
        ),
      ),
    );
  }

  Widget _buildText(context) {
    return Center(
      child: Text(
        text,
        style: getRegularStyle(
          fontSize: 22.spMin,
          color: ColorManager.white,
        ),
      ),
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Icon(
      Icons.arrow_forward_ios,
      color: ColorManager.white,
      size: 20.r,
    );
  }
}

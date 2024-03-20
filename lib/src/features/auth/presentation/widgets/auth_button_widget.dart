import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    super.key,
    required this.label,
    required this.onPressed,
    required this.loading,
    this.width,
  });

  final String label;
  final Function() onPressed;
  final bool loading;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return _buildButton();
  }

  Widget _buildButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.blue,
            minimumSize: Size(width ?? 0.8.sw, 45.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9.r),
            ),
          ),
          onPressed: _onPressed,
          child: loading ? _buildLoading() : _buildText(),
        ),
      ],
    );
  }

  Widget _buildText() {
    return Text(
      label,
      style: getBoldStyle(
        fontSize: 19.spMin,
        color: ColorManager.white,
      ),
    );
  }

  Widget _buildLoading() {
    return SizedBox(
      width: 20.w,
      height: 20.h,
      child: const CircularProgressIndicator(
        strokeWidth: 2,
        valueColor: AlwaysStoppedAnimation<Color>(ColorManager.white),
      ),
    );
  }

  // Prevents the button from being pressed while loading
  void _onPressed() {
    if (!loading) {
      onPressed();
    }
  }
}

import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.amber,
        boxShadow: [
          BoxShadow(
            color: ColorManager.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: SvgPicture.asset(
        AssetsManager.userAvatar,
        fit: BoxFit.cover,
      ),
    );
  }
}

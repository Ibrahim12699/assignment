import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildAppBar(context);
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      forceMaterialTransparency: true,
      backgroundColor: Colors.transparent,
      actions: _buildAppBarActions(context),
    );
  }

  List<Widget> _buildAppBarActions(BuildContext context) {
    return [
      Padding(
        padding: EdgeInsetsDirectional.only(end: 30.w),
        child: Row(
          children: [
            _buildNotificationIcon(),
            20.horizontalSpace,
            _buildMenuIcon(),
          ],
        ),
      ),
    ];
  }

  Widget _buildNotificationIcon() {
    return SvgPicture.asset(
      AssetsManager.notification,
      height: 22.h,
      width: 21.w,
    );
  }

  Widget _buildMenuIcon() {
    return SvgPicture.asset(
      AssetsManager.menuIcon,
      height: 7.h,
      width: 24.w,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(56.h);
}

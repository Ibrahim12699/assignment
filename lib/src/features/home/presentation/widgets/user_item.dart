import 'package:assignment/src/features/auth/data/model/user.dart';
import 'package:assignment/src/features/home/presentation/widgets/user_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'user_item_container.dart';

class UserItem extends StatelessWidget {
  const UserItem({
    super.key,
    required this.user,
    required this.index,
  });

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.31.sw,
      child: Stack(
        fit: StackFit.expand,
        children: [
          _buildUserItemContainer(),
          _buildUserAvatar(),
        ],
      ),
    );
  }

  Widget _buildUserItemContainer() {
    return Positioned.fill(
      top: 22.h,
      child: UserItemContainer(
        user: user,
        index: index,
      ),
    );
  }

  Widget _buildUserAvatar() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Center(
        child: UserAvatar(size: 58.r),
      ),
    );
  }
}

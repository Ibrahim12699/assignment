import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:assignment/src/features/auth/data/model/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserItemContainer extends StatelessWidget {
  const UserItemContainer({
    super.key,
    required this.user,
    required this.index,
  });

  final User user;
  final int index;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Column(children: [
          _buildTitleContainer(constraints.minHeight * .55, context),
          _buildUserInfoContainer(context),
        ]),
      );
    });
  }

  Widget _buildTitleContainer(height, BuildContext context) {
    return Container(
      height: height,
      color: getItemColor(index),
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(bottom: 4.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _buildUserNameText(context),
            8.verticalSpace,
            _buildWalletMoneyText(context),
            8.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildUserNameText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Text(
        user.userName ?? '',
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: getBoldStyle(
          color: ColorManager.white,
          fontSize: 16.spMin,
        ),
      ),
    );
  }

  Widget _buildWalletMoneyText(BuildContext context) {
    return Text(
      StringsManager.totalSpending,
      style: getRegularStyle(
        color: ColorManager.white,
        fontSize: 12.spMin,
      ),
    );
  }

  Widget _buildUserInfoContainer(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            12.verticalSpace,
            _buildMoneyAmount(context),
            6.verticalSpace,
            _buildLastUpdated(context),
            12.verticalSpace,
          ],
        ),
      ),
    );
  }

  Widget _buildMoneyAmount(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildCurrencyText(context),
          5.horizontalSpace,
          Flexible(child: _buildAmount(context)),
        ],
      ),
    );
  }

  Widget _buildCurrencyText(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        StringsManager.egp,
        style: getRegularStyle(
          color: ColorManager.black,
          fontSize: 11.spMin,
        ),
      ),
    );
  }

  Widget _buildAmount(BuildContext context) {
    return Text(
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      user.walletAmount ?? '',
      style: getSemiBoldStyle(
        fontSize: 32.spMin,
      ),
    );
  }

  Widget _buildLastUpdated(BuildContext context) {
    return Text(
      "${StringsManager.lastSpend} ${user.lastUpdate ?? ''}",
      style: getRegularStyle(
        color: ColorManager.black,
        fontSize: 10.spMin,
      ),
    );
  }
}

Color getItemColor(int index) {
  switch (index % 3) {
    case 0:
      return ColorManager.amber;
    case 1:
      return ColorManager.lightRed;
    case 2:
      return ColorManager.purple;
    default:
      return ColorManager.amber;
  }
}

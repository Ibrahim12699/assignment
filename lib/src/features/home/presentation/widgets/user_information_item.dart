import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserInformationItem extends StatelessWidget {
  const UserInformationItem({
    super.key,
    required this.title,
    required this.imageIcon,
    required this.moneyAmount,
    required this.lastUpdated,
    this.type,
  });

  final String title;
  final String imageIcon;
  final String moneyAmount;
  final String lastUpdated;
  final String? type;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(13.r),
        ),
        child: Column(children: [
          _buildTitleContainer(context),
          _buildUserInfoContainer(context),
        ]),
      ),
    );
  }

  Widget _buildTitleContainer(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 21.h, bottom: 15.h),
      color: type == 'payment' ? ColorManager.lightGrey : ColorManager.darkGrey,
      child: _buildTitleText(context),
    );
  }

  Widget _buildTitleText(context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: getBoldStyle(
        fontSize: 14.spMin,
        color: ColorManager.white,
      ),
    );
  }

  Widget _buildUserInfoContainer(BuildContext context) {
    return Container(
      color: ColorManager.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          10.verticalSpace,
          _buildIcon(),
          6.verticalSpace,
          _buildMoneyAmount(context),
          5.verticalSpace,
          _buildLastUpdated(context),
          13.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildIcon() {
    return SvgPicture.asset(
      imageIcon,
      height: 34.r,
      width: 34.r,
      fit: BoxFit.cover,
    );
  }

  Widget _buildMoneyAmount(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCurrencyText(context),
        5.horizontalSpace,
        _buildAmount(context),
      ],
    );
  }

  Widget _buildCurrencyText(BuildContext context) {
    return RotatedBox(
      quarterTurns: 3,
      child: Text(
        StringsManager.egp,
        style: getSemiBoldStyle(
          fontSize: 14.spMin,
          color: ColorManager.hintColor,
        ),
      ),
    );
  }

  Widget _buildAmount(BuildContext context) {
    return Text(
      moneyAmount,
      style: getSemiBoldStyle(
        fontSize: 42.spMin,
        color: ColorManager.black,
      ),
    );
  }

  Widget _buildLastUpdated(BuildContext context) {
    return Text(
      lastUpdated,
      style: getRegularStyle(
        fontSize: 10.spMin,
        color: ColorManager.grey,
      ),
    );
  }
}

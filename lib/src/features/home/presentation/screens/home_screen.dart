// ignore_for_file: prefer_typing_uninitialized_variables
import 'dart:developer';

import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:assignment/src/core/resource/color_manager.dart';
import 'package:assignment/src/core/resource/route_manager.dart';
import 'package:assignment/src/core/resource/strings_manager.dart';
import 'package:assignment/src/core/resource/style_manager.dart';
import 'package:assignment/src/core/resource/utils.dart';
import 'package:assignment/src/features/home/business_logic/cubit/home_cubit.dart';
import 'package:assignment/src/features/home/business_logic/cubit/home_state.dart';
import 'package:assignment/src/features/home/presentation/widgets/custom_large_button.dart';
import 'package:assignment/src/features/home/presentation/widgets/home_app_bar.dart';
import 'package:assignment/src/features/home/presentation/widgets/home_background_image.dart';
import 'package:assignment/src/features/home/presentation/widgets/user_avatar.dart';
import 'package:assignment/src/features/home/presentation/widgets/user_information_item.dart';
import 'package:assignment/src/features/home/presentation/widgets/user_item.dart';
import 'package:assignment/src/features/home/presentation/widgets/user_name_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  final currentUser;

  const HomeView({
    super.key,
    required this.currentUser,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    log("${widget.currentUser} is the current user.");
    super.initState();
    RouteGenerator.homeCubit.refreshUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const HomeAppBar(),
      backgroundColor: ColorManager.backGroundColor,
      body: _buildBloc(),
    );
  }

  Widget _buildBloc() {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        state.mapOrNull(
          addedUser: _onAddedUser,
          usersLoaded: (users) {},
        );
      },
      builder: (context, state) {
        return _buildBody(context);
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return Stack(
      children: [
        _buildBackGroundImage(),
        _buildMainUserView(context),
      ],
    );
  }

  Widget _buildBackGroundImage() {
    return const HomeBackgroundImage();
  }

  Widget _buildMainUserView(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          156.verticalSpace,
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37.w),
            child: Column(
              children: [
                _buildUserSection(),
                54.verticalSpace,
                _buildBottomSection(context),
              ],
            ),
          ),
          16.verticalSpace,

          _buildUsersList(context),
          // 136.verticalSpace,
        ],
      ),
    );
  }

  Widget _buildUserSection() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCircleAvatar(),
        23.horizontalSpace,
        UserNameText(username: widget.currentUser.username),
      ],
    );
  }

  Widget _buildCircleAvatar() {
    return UserAvatar(
      size: 0.2.sw,
    );
  }

  Widget _buildBottomSection(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _buildTransactionsSection(context),
        42.verticalSpace,
        _buildTestButton(context),
        46.verticalSpace,
        _buildAddUserSection(context),
      ],
    );
  }

  Widget _buildTransactionsSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildUserWalletInformation(context),
        10.horizontalSpace,
        _buildUserLastActivityInformation(context),
      ],
    );
  }

  Widget _buildUserWalletInformation(BuildContext context) {
    return UserInformationItem(
      title: StringsManager.yourWallet,
      imageIcon: AssetsManager.wallet,
      moneyAmount: widget.currentUser.walletAmount,
      lastUpdated: "Last update ${widget.currentUser.lastUpdate}",
    );
  }

  Widget _buildUserLastActivityInformation(BuildContext context) {
    return UserInformationItem(
      title: StringsManager.lastActivity,
      imageIcon: AssetsManager.payment,
      moneyAmount: widget.currentUser.lastActivity,
      lastUpdated: 'Transaction on ${widget.currentUser.lastActivityDate}',
      type: 'payment',
    );
  }

  Widget _buildTestButton(BuildContext context) {
    return CustomLargeButton(
      text: StringsManager.test,
      onTap: () {},
    );
  }

  Widget _buildAddUserSection(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildUsersText(),
        _buildAddUserIcon(context),
      ],
    );
  }

  Widget _buildUsersText() {
    return Text(
      StringsManager.users,
      style: getBoldStyle(
        fontSize: 21.spMin,
        color: ColorManager.black,
      ),
    );
  }

  Widget _buildAddUserIcon(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: ColorManager.white,
      ),
      child: InkWell(
          child: Icon(
            Icons.add,
            size: 20.r,
            color: ColorManager.darkGrey,
          ),
          onTap: () {
            appModalBottomSheet(context);
          }),
    );
  }

  Widget _buildUsersList(BuildContext context) {
    return SizedBox(
      height: .27.sh,
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 37.w,
          right: 37.w,
          bottom: 50.h,
          top: 10.h,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: RouteGenerator.homeCubit.users.length,
        itemBuilder: ((context, index) {
          return UserItem(
            user: RouteGenerator.homeCubit.users[index],
            index: index,
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return 14.horizontalSpace;
        },
      ),
    );
  }

  void _onAddedUser(AddedUser state) {
    RouteGenerator.homeCubit.refreshUsers();
  }
}

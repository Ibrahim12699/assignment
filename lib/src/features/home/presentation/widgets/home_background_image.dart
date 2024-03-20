import 'package:assignment/src/core/resource/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBackgroundImage extends StatelessWidget {
  const HomeBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .62,
      child: SvgPicture.asset(
        AssetsManager.homeBg,
        fit: BoxFit.cover,
      ),
    );
  }
}

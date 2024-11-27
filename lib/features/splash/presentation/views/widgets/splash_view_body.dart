import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/resources/assets_manager.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(SvgAssets.assetsSvgPlant)],
        ),
        SvgPicture.asset(SvgAssets.assetsSvgSplashImage),
        SvgPicture.asset(
          SvgAssets.assetsSvgSplashBottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}

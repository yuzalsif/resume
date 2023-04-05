import 'package:flutter/material.dart';

import '../../../config/themes/theme_config.dart';
import '../widgets/left_side_navbar.dart';
import 'package:resume/constants/app_constants.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          color: ThemeConfig.lightBackGroundColor,
          child: Padding(
              padding: const EdgeInsets.only(
          left: AppConstants.applicationLeftSidePadding,
          right: AppConstants.applicationRightSidePadding,
          top: AppConstants.applicationTopSidePadding,
              ),
              child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [LeftSideNavBar()],
              ),
            ),
        ));
  }
}

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';
import 'package:profit_trans_lk/utils/device/device_utility.dart';

class PtTabBar extends StatelessWidget implements PreferredSizeWidget {
  const PtTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: PtColors.accent,
      child: TabBar(
        tabs: tabs,
        tabAlignment: TabAlignment.start,
        padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2),
        isScrollable: true,
        indicatorColor: PtColors.primary,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black54,
        overlayColor: WidgetStateColor.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PtDeviceUtils.getAppBarHeight());
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';
import 'package:profit_trans_lk/utils/device/device_utility.dart';

class PtAppbarMobile extends StatelessWidget implements PreferredSizeWidget {
  const PtAppbarMobile({
    super.key,
    required this.text,
    this.backgroundColor = AppColors.bgColor,
    required this.showBackArrow,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.style,
    this.shape = const Border(bottom: BorderSide(color: PtColors.appBarBorder, width: 0.5)),
    required this.automaticallyImplyLeading,
  });

  final String text;
  final Color? backgroundColor;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final TextStyle? style;
  final ShapeBorder? shape;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      iconTheme: const IconThemeData(color: Colors.grey),
      centerTitle: true,
      backgroundColor: backgroundColor,
      shape: shape,
      automaticallyImplyLeading: automaticallyImplyLeading,
      actions: actions,
      leading: showBackArrow
          ? Padding(
              padding: const EdgeInsets.only(left: PtSizes.defaultSpace24),
              child: IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  padding: EdgeInsets.zero,
                  onPressed: () => Get.back(),
                  icon: const Align(alignment: Alignment.centerLeft, child: Icon(Icons.arrow_back_ios, size: 18, color: Colors.grey))),
            )
          : leadingIcon != null
              ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
              : null,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(PtDeviceUtils.getAppBarHeight());
}

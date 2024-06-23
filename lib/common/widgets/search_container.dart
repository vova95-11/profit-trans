import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';
import 'package:profit_trans_lk/utils/device/device_utility.dart';

class PtSearchContainer extends StatelessWidget {
  const PtSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal_copy,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.spaceBtwItems16),
        child: Container(
          width: PtDeviceUtils.getScreenWidth(context) - PtSizes.defaultSpace24 * 2,
          padding: const EdgeInsets.all(PtSizes.md16),
          decoration: BoxDecoration(
            color: PtColors.accent,
            borderRadius: BorderRadius.circular(PtSizes.cardRadiusLg16),
            border: showBorder ? Border.all(color: Colors.grey.shade400) : null,
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey),
              const SizedBox(width: PtSizes.spaceBtwItems16),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}

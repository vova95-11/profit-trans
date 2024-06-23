import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class PtNatificationIcon extends StatelessWidget {
  const PtNatificationIcon({
    super.key,
    required this.onPressed,
    required this.iconColor,
  });

  final VoidCallback onPressed;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24),
      child: Stack(
        children: [
          IconButton(onPressed: onPressed, icon: Icon(Iconsax.notification_copy, color: iconColor)),
          Positioned(
            right: 0,
            child: Container(
              width: 18,
              height: 18,
              decoration: BoxDecoration(
                color: PtColors.secondary2.withOpacity(0.8),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Text(
                  "2", // Сделать проверку, если больше 99 тогда 99+
                  style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

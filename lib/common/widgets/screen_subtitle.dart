import 'package:flutter/material.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class ScreenSubtitle extends StatelessWidget {
  const ScreenSubtitle({
    super.key,
    required this.text,
    required this.number,
    this.padding = const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.spaceBtwItems16),
    required this.style,
  });

  final String text;
  final String number;
  final EdgeInsetsGeometry padding;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text.rich(
        TextSpan(
          text: text,
          style: style,
          children: <InlineSpan>[
            TextSpan(
              text: number,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold, color: PtColors.secondary),
            ),
          ],
        ),
      ),
    );
  }
}

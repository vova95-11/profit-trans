import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';

class NotificationCardWidget extends StatelessWidget {
  const NotificationCardWidget({super.key, required this.number, required this.titile, required this.color});

  final String number;
  final String titile;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PtColors.secondary,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Text(number, style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: color)),
          Text(titile, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.bgSideMenu)),
        ],
      ),
    );
  }
}

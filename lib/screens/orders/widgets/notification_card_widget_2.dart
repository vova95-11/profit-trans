import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class NotificationCardWidget2 extends StatelessWidget {
  const NotificationCardWidget2({super.key, required this.number, required this.titile, required this.color});

  final String number;
  final String titile;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12),
      decoration: BoxDecoration(
        color: AppColors.barBg,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Row(
        children: [
          Text(titile, style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.bgSideMenu)),
          SizedBox(width: 10),
          Text(number, style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: color)),
        ],
      ),
    );
  }
}

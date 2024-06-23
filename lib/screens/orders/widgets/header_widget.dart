import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(width: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('ООО Ромашка', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: AppColors.bgSideMenu)),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                navigationIcon(icon: Icons.person_2_outlined),
                SizedBox(width: 20),
                navigationIcon(icon: Icons.logout_rounded),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget navigationIcon({icon}) {
    return Icon(icon, color: AppColors.bgSideMenu);
  }
}

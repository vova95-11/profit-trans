import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.secondaryBg,
      centerTitle: false,
      title: Row(
        children: [
          const Image(image: AssetImage('assets/logo/logo.png'), width: 40, height: 40),
          const SizedBox(width: 10),
          Text('PROFIT TRANS', style: Theme.of(context).textTheme.headlineSmall!.apply(color: const Color.fromARGB(255, 17, 20, 81))),
        ],
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/logout');
              },
              icon: const Icon(Icons.logout_outlined)),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

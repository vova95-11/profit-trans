import 'package:flutter/material.dart';

import '../../../config/size_config.dart';
import '../../../style/colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 230,
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        color: AppColors.secondaryBg,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      const Image(image: AssetImage('assets/logo/logo.png'), width: 50, height: 50),
                      const SizedBox(width: 5),
                      Text('PROFIT TRANS', style: Theme.of(context).textTheme.headlineSmall!.apply(color: const Color.fromARGB(255, 17, 20, 81))),
                    ],
                  ),
                ),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket)),
                    const Text('Заказы'),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.attach_money)),
                    const Text('Финансы'),
                  ],
                ),
                const SizedBox(height: 6),
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
                    const Text('Уведомления'),
                  ],
                ),
                const SizedBox(height: 6),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

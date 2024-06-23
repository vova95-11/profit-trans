import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> screens = {
      'Заказы': {
        'routeName': '/orders',
        'icon': const Icon(Icons.shopping_basket),
      },
      'Финансы': {
        'routeName': '/finance',
        'icon': const Icon(Icons.attach_money),
      },
      'Уведомления': {
        'routeName': '/notifications',
        'icon': const Icon(Icons.notifications),
      },
    };
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 65.0,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.secondaryBg,
              ),
              child: Row(
                children: [
                  const Image(image: AssetImage('assets/logo/logo.png'), width: 50, height: 50),
                  const SizedBox(width: 10),
                  Text('PROFIT TRANS', style: Theme.of(context).textTheme.headlineSmall!.apply(color: const Color.fromARGB(255, 17, 20, 81))),
                ],
              ),
            ),
          ),
          ...screens.entries.map((screen) {
            return ListTile(
              leading: screen.value['icon'],
              title: Text(screen.key),
              onTap: () {
                Navigator.pushNamed(context, screen.value['routeName']);
              },
            );
          })
        ],
      ),
    );
  }
}

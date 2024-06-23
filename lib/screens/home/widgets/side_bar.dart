import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'package:profit_trans_lk/style/colors.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> screens = {
      'Главная': {
        'routeName': '/menu',
        'icon': const Icon(Iconsax.home),
      },
      'Заказы': {
        'routeName': '/orders',
        'icon': const Icon(Iconsax.card),
      },
      'Финансы': {
        'routeName': '/finance',
        'icon': const Icon(Iconsax.dollar_square),
      },
      'Уведомления': {
        'routeName': '/notifications',
        'icon': const Icon(Iconsax.notification),
      },
    };

    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColors.bgSideMenu,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: BorderRadius.circular(30),
          ),
          margin: EdgeInsets.fromLTRB(12, 12, 0, 12),
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 6, 0, 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text('PROFIT TRANS',
                          style: Theme.of(context).textTheme.headlineSmall!.apply(color: const Color.fromARGB(255, 17, 20, 81), overflow: TextOverflow.ellipsis)),
                    ),
                    Spacer(),
                    const Image(image: AssetImage('assets/logo/logo2.png'), width: 35, height: 35),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Divider(),
              ),
              const SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  ...screens.entries.map((screen) {
                    return ListTile(
                      leading: screen.value['icon'],
                      iconColor: const Color.fromARGB(255, 17, 20, 81),
                      title: Text(
                        screen.key,
                        style: TextStyle(color: const Color.fromARGB(255, 17, 20, 81)),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, screen.value['routeName']);
                      },
                    );
                  })
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.bgColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset("assets/logo/footer.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

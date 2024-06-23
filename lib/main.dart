import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profit_trans_lk/config/responsive.dart';
import 'package:profit_trans_lk/config/theme.dart';
import 'package:profit_trans_lk/navigation_menu.dart';
import 'package:profit_trans_lk/screens/finance/finance_screen.dart';
import 'package:profit_trans_lk/screens/home/home_screen_desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Личный кабинет Profit Trans',
      theme: theme(),
      initialRoute: '/',
      routes: {
        '/': (context) => Responsive.isWideDesktop(context) || Responsive.isDesktop(context) || Responsive.isTablet(context) ? const HomeScreenDesktop() : const NavigationMenu(),

        //  '/': (context) => const NavigationMenu(),
        '/finance': (context) => const FinanceScreen(),
      },
      // home: const MenuScreen(),
    );
  }
}

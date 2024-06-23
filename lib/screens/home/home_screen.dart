import 'package:flutter/material.dart';
import 'package:profit_trans_lk/config/responsive.dart';
import 'package:profit_trans_lk/screens/home/home_screen_desktop.dart';
import 'package:profit_trans_lk/screens/home/home_screen_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isWideDesktop(context) || Responsive.isDesktop(context) || Responsive.isTablet(context) ? HomeScreenDesktop() : HomeScreenMobile();
  }
}

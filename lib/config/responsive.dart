import 'package:flutter/material.dart';

enum ResponsiveEnum { isMobile, isTablet, isDesktop, isWideDesktop }

class Responsive {
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width < 850 && MediaQuery.of(context).size.width >= 600;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width < 1500 && MediaQuery.of(context).size.width >= 850;

  static bool isWideDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1500;
}

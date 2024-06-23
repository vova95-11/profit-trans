import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/screens/finance/finance_screen_mobile.dart';
import 'package:profit_trans_lk/screens/home/home_screen_mobile.dart';
import 'package:profit_trans_lk/screens/orders/order_screen_mobile.dart';
import 'package:profit_trans_lk/screens/settings/settings_screen_mobile.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => Theme(
          data: ThemeData(
            brightness: Brightness.light,
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) => controller.selectedIndex.value = index,
            backgroundColor: AppColors.bgColor,
            indicatorColor: Colors.transparent,
            destinations: const [
              NavigationDestination(
                icon: Icon(Iconsax.home_copy, size: 24),
                selectedIcon: Icon(Iconsax.home, size: 26, color: PtColors.primary),
                label: "Главная",
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.card_copy, size: 24),
                selectedIcon: Icon(Iconsax.card, size: 26, color: PtColors.primary),
                label: "Заказы",
                tooltip: '',
              ),
              // NavigationDestination(
              //   icon: Icon(Iconsax.add_circle5, size: 40, color: Color.fromARGB(255, 2, 121, 89)),
              //   selectedIcon: Icon(Iconsax.add_circle, size: 40, color: Color.fromARGB(255, 4, 182, 135)),
              //   label: "",
              //   tooltip: '',
              // ),
              NavigationDestination(
                icon: Icon(Iconsax.dollar_circle_copy, size: 24),
                selectedIcon: Icon(Iconsax.dollar_circle, size: 26, color: PtColors.primary),
                label: "Финансы",
                tooltip: '',
              ),
              NavigationDestination(
                icon: Icon(Iconsax.profile_circle_copy, size: 24),
                selectedIcon: Icon(Iconsax.profile_circle, size: 26, color: PtColors.primary),
                label: "Профиль",
                tooltip: '',
              ),
            ],
          ),
        ),
        // ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreenMobile(),
    const OrderScreenMobile(),
    // const ZakazScreen(),
    const FinanceScreenMobile(),
    const SettingsScreenMobile(),
  ];
}

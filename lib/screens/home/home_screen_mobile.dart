import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';
import 'package:profit_trans_lk/common/widgets/notifications/notifications_icon.dart';
import 'package:profit_trans_lk/common/widgets/screen_subtitle.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/drawer_mobile.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/notification_screen_mobile.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/order_card_mobile.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TooltipVisibility(
      visible: false,
      child: Scaffold(
        drawer: const PtDrawerMobile(),
        appBar: PtAppbarMobile(
          automaticallyImplyLeading: true,
          showBackArrow: false,
          text: 'ООО Ромашка',
          style: Theme.of(context).textTheme.headlineLarge,
          actions: [
            PtNatificationIcon(onPressed: () => Get.to(() => const NotificationScreenMobile()), iconColor: Colors.black),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenSubtitle(text: "Текущие заказы: ", style: Theme.of(context).textTheme.titleMedium, number: "2"),
              const OrderCard(),
              const OrderCard(),
              ScreenSubtitle(text: "Неоплаченные счета: ", style: Theme.of(context).textTheme.titleMedium, number: "3"),
              const OrderCard(),
              const OrderCard(),
              const OrderCard(),
              const SizedBox(height: PtSizes.spaceBtwSections32),
            ],
          ),
        ),
      ),
    );
  }
}

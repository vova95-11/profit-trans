import 'package:flutter/material.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';

class NotificationScreenMobile extends StatelessWidget {
  const NotificationScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PtAppbarMobile(
        text: 'Уведомления',
        showBackArrow: true,
        automaticallyImplyLeading: true,
      ),
    );
  }
}

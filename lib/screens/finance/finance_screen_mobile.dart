import 'package:flutter/material.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/drawer_mobile.dart';

class FinanceScreenMobile extends StatelessWidget {
  const FinanceScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PtDrawerMobile(),
      appBar: PtAppbarMobile(
        automaticallyImplyLeading: true,
        showBackArrow: false,
        text: 'Финансы',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      body: Center(
        child: Container(height: 150, width: 150, color: Colors.black38),
      ),
    );
  }
}

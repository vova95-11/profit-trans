import 'package:flutter/material.dart';
import 'package:profit_trans_lk/models/order_models.dart';
import 'package:profit_trans_lk/screens/dashboard/widgets/customAppbar.dart';
import 'package:profit_trans_lk/screens/dashboard/widgets/customDrawer.dart';
import 'package:profit_trans_lk/screens/dashboard/widgets/orderCard.dart';
import 'package:profit_trans_lk/screens/dashboard/widgets/tableHeader.dart';
import 'package:profit_trans_lk/style/colors.dart';

class DashboardNew extends StatelessWidget {
  const DashboardNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      drawer: const CustomDrawer(),
      body: Container(
        color: Colors.grey.shade300,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    TableHeader(width: 120, text: 'Заказ'),
                    TableHeader(width: 200, text: 'Текущий статус'),
                    TableHeader(width: 200, text: 'Маршрут'),
                    TableHeader(width: 200, text: 'Контейнер'),
                    TableHeader(width: 200, text: 'Отправитель'),
                    TableHeader(width: 200, text: 'Получатель'),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: Order.orders.length,
                  itemBuilder: (BuildContext context, int index) {
                    return OrderCardOld(order: Order.orders[index], index: index);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

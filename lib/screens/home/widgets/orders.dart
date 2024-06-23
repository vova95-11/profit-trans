import 'package:flutter/material.dart';
import 'package:profit_trans_lk/screens/home/widgets/calendar_widget.dart';
import 'package:profit_trans_lk/screens/orders/widgets/header_widget.dart';
import 'package:profit_trans_lk/screens/orders/widgets/notification_card_widget.dart';
import 'package:profit_trans_lk/screens/orders/widgets/order_widget.dart';
import 'package:profit_trans_lk/style/colors.dart';

class Orders extends StatefulWidget {
  const Orders({
    super.key,
  });

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          HeaderWidget(),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              NotificationCardWidget(number: '0', titile: 'Текущие заказы', color: Colors.green),
                              NotificationCardWidget(number: '12', titile: 'Завершенные заказы', color: AppColors.secondary),
                              NotificationCardWidget(number: '1', titile: 'Неоплаченные счета', color: Colors.red),
                            ],
                          ),
                          SizedBox(height: 20),
                          OrderWidget(),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 12),
                      child: Column(
                        children: [
                          CalendarWidget(),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:profit_trans_lk/models/order_models.dart';

class OrderCardOld extends StatelessWidget {
  const OrderCardOld({
    super.key,
    required this.order,
    required this.index,
  });

  final Order order;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Row(
            children: [
              Text(order.orderNum),
              Text(order.status),
            ],
          ),
        ),
      ),
    );
  }
}

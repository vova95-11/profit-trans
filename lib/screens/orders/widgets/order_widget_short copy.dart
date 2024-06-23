import 'package:flutter/material.dart';
import 'package:profit_trans_lk/models/order_models.dart';
import 'package:profit_trans_lk/style/colors.dart';

class OrderWidgetShortCopy extends StatefulWidget {
  const OrderWidgetShortCopy({super.key});

  @override
  State<OrderWidgetShortCopy> createState() => _OrderWidgetShortCopyState();
}

class _OrderWidgetShortCopyState extends State<OrderWidgetShortCopy> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 12, bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text("Мои заказы", style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis))),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.yellow,
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: const Flexible(child: Text("Открыть все", overflow: TextOverflow.ellipsis)),
              ),
            ],
          ),
          const Divider(thickness: 0.5, color: Colors.grey),

          PTableOrderShort(),

          /// Table
          Table(defaultVerticalAlignment: TableCellVerticalAlignment.middle, children: [
            TableRow(
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.grey,
                    width: 0.5,
                  ),
                ),
              ),
              children: [
                tableHeader("Заказ"),
                tableHeader("Маршрут"),
                tableHeader("Контейнер"),
                tableHeader("Груз"),
                tableHeader("Статус"),
                tableHeader("Побробнее"),
              ],
            ),
          ]),
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: Order.orders.map((order) {
              return TableRow(children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Flexible(child: Text(order.orderNum, overflow: TextOverflow.ellipsis)),
                  ),
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    child: Flexible(child: Text(order.orderNum, overflow: TextOverflow.ellipsis)),
                  ),
                ),
              ]);
            }).toList(),
          ),

          Container(
            height: 32,
            padding: EdgeInsets.only(top: 16),
            child: Text("Последние 4 заказа"),
          ),
        ],
      ),
    );
  }

  Widget tableHeader(text) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Flexible(child: Text(text, style: Theme.of(context).textTheme.titleSmall!.copyWith(overflow: TextOverflow.ellipsis))),
      ),
    );
  }

  TableRow buildRow(List<String> ceels) => TableRow(children: []);
}

class PTableOrderShort extends StatelessWidget {
  const PTableOrderShort({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Table(
      children: Order.orders.map((order) {
        return TableRow(children: [
          Center(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Flexible(child: Text(order.status, overflow: TextOverflow.ellipsis)),
            ),
          ),
        ]);
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class OrderWidget extends StatefulWidget {
  const OrderWidget({super.key});

  @override
  State<OrderWidget> createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
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
          Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: <TableRow>[
              /// Table Header
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

              /// Table data
              tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
              // tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
            ],
          ),
          Container(
            height: 32,
            padding: EdgeInsets.only(top: 16),
            child: Text("Последние 4 заказа"),
          ),
        ],
      ),
    );

    // Expanded(
    //   child: Container(
    //     decoration: BoxDecoration(
    //       color: AppColors.white,
    //       borderRadius: BorderRadius.circular(20),
    //     ),
    //     padding: const EdgeInsets.all(20),
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //           children: [
    //             Flexible(child: Text("Мои заказы", style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis))),
    //             Container(
    //               decoration: BoxDecoration(
    //                 color: AppColors.yellow,
    //                 borderRadius: BorderRadius.circular(100),
    //               ),
    //               padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
    //               child: const Flexible(child: Text("Открыть все", overflow: TextOverflow.ellipsis)),
    //             ),
    //           ],
    //         ),
    //         const Divider(thickness: 0.5, color: Colors.grey),
    //         Table(
    //           defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    //           children: <TableRow>[
    //             /// Table Header
    //             TableRow(
    //               decoration: const BoxDecoration(
    //                 border: Border(
    //                   bottom: BorderSide(
    //                     color: Colors.grey,
    //                     width: 0.5,
    //                   ),
    //                 ),
    //               ),
    //               children: [
    //                 tableHeader("Заказ"),
    //                 tableHeader("Маршрут"),
    //                 tableHeader("Контейнер"),
    //                 tableHeader("Груз"),
    //                 tableHeader("Статус"),
    //                 tableHeader("Побробнее"),
    //               ],
    //             ),
    //           ],
    //         ),
    //         Expanded(
    //           child: SingleChildScrollView(
    //             child: Table(
    //               defaultVerticalAlignment: TableCellVerticalAlignment.middle,
    //               children: <TableRow>[
    //                 /// Table data
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //                 tableRow(context, order: 'T000590', route: 'Шанхай - Москва', container: "40'HC", cargo: 'Автозапчасти', status: 'В пути: Море', color: AppColors.yellow),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Container(
    //           height: 32,
    //           padding: EdgeInsets.only(top: 16),
    //           child: Text("Последние 7 заказов"),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }

  TableRow tableRow(context, {order, route, container, cargo, status, color}) {
    return TableRow(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      children: [
        // Заказ
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Flexible(child: Text(order, overflow: TextOverflow.ellipsis)),
          ),
        ),
        // Маршрут
        Center(child: Flexible(child: Text(route, overflow: TextOverflow.ellipsis))),
        // Контейнер
        Center(child: Flexible(child: Text(container, overflow: TextOverflow.ellipsis))),
        // Груз
        Center(child: Flexible(child: Text(cargo, overflow: TextOverflow.ellipsis))),
        // Статус
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              height: 10,
              width: 10,
            ),
            const SizedBox(width: 5),
            Flexible(child: Text(status, overflow: TextOverflow.ellipsis)),
          ],
        ),
        // Меню
        const Align(alignment: Alignment.center, child: Icon(Icons.more_horiz)),
      ],
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
}

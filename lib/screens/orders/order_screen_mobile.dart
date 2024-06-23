import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';
import 'package:profit_trans_lk/common/widgets/search_container.dart';
import 'package:profit_trans_lk/models/order_models.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/drawer_mobile.dart';
import 'package:profit_trans_lk/screens/orders/order_detail_screen_mobile.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class OrderScreenMobile extends StatefulWidget {
  const OrderScreenMobile({super.key});

  @override
  State<OrderScreenMobile> createState() => _OrderScreenMobileState();
}

class _OrderScreenMobileState extends State<OrderScreenMobile> {
  final List<Order> _ordersData = List.from(Order.orders);

  bool _isSortAsc = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PtDrawerMobile(),
      appBar: PtAppbarMobile(
        automaticallyImplyLeading: true,
        showBackArrow: false,
        text: 'Мои заказы',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const PtSearchContainer(text: "Поиск"),
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: const Text("Заказ"),
                        onSort: (columnIndex, _) {
                          setState(() {
                            if (_isSortAsc) {
                              _ordersData.sort((a, b) => b.orderNum.compareTo(a.orderNum));
                            } else {
                              _ordersData.sort((a, b) => a.orderNum.compareTo(b.orderNum));
                            }
                            _isSortAsc = !_isSortAsc;
                          });
                        },
                      ),
                      DataColumn(
                        label: const Text("Дата"),
                        onSort: (columnIndex, _) {
                          setState(() {
                            if (_isSortAsc) {
                              _ordersData.sort((a, b) => a.date.compareTo(b.date));
                            } else {
                              _ordersData.sort((a, b) => b.date.compareTo(a.date));
                            }
                            _isSortAsc = !_isSortAsc;
                          });
                        },
                      ),
                      DataColumn(
                        label: const Text("Статус"),
                        onSort: (columnIndex, _) {
                          setState(() {
                            if (_isSortAsc) {
                              _ordersData.sort((a, b) => a.status.compareTo(b.status));
                            } else {
                              _ordersData.sort((a, b) => b.status.compareTo(a.status));
                            }
                            _isSortAsc = !_isSortAsc;
                          });
                        },
                      ),
                      const DataColumn(label: Text("Маршрут")),
                      const DataColumn(label: Text("Контейнер")),
                      const DataColumn(label: Text("Груз")),
                    ],
                    rows: _ordersData.map((e) {
                      return DataRow(
                        cells: [
                          DataCell(GestureDetector(onTap: () => Get.to(() => const OrderDetailScreenMobile()), child: Text(e.orderNum.toString()))),
                          DataCell(Text(DateFormat('dd.MM.y').format(e.date))),
                          DataCell(Row(
                            children: [
                              Container(height: 10, width: 10, decoration: BoxDecoration(borderRadius: BorderRadius.circular(1000), color: e.color)),
                              const SizedBox(width: 10),
                              Text(e.status.toString()),
                            ],
                          )),
                          DataCell(Text(e.route.toString())),
                          DataCell(Text(e.container.toString())),
                          DataCell(Text(e.cargo.toString())),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: PtSizes.spaceBtwSections32),
            ],
          ),
        ),
      ),
    );
  }
}

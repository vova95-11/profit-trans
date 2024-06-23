import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Order extends Equatable {
  final String id;
  final String orderNum;
  final DateTime date;
  final String route;
  final String container;
  final String cargo;
  final String status;
  final Color color;

  const Order({
    required this.id,
    required this.orderNum,
    required this.date,
    required this.route,
    required this.container,
    required this.cargo,
    required this.status,
    required this.color,
  });

  @override
  List<Object?> get props => [
        id,
        orderNum,
        date,
        route,
        container,
        cargo,
        status,
        color,
      ];

  static List<Order> orders = [
    Order(
      id: '1',
      orderNum: 'T-000123',
      date: DateTime(2024, 03, 12),
      route: 'Шанхай - Владивосток',
      container: "2 x 20'DC",
      cargo: "Автомобильное масло",
      status: 'В порту отправления',
      color: Color.fromARGB(255, 147, 1, 137),
    ),
    Order(
      id: '2',
      orderNum: 'T-000124',
      date: DateTime(2023, 09, 11),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: Море',
      color: Colors.orange,
    ),
    Order(
      id: '3',
      orderNum: 'T-000125',
      date: DateTime(2023, 06, 18),
      route: 'Циндао - Москва',
      container: "1 x 20'DC",
      cargo: "Игрушки",
      status: 'На станции назначения',
      color: Colors.yellowAccent,
    ),
    Order(
      id: '4',
      orderNum: 'T-000126',
      date: DateTime(2023, 04, 29),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В порту отправления',
      color: Color.fromARGB(255, 147, 1, 137),
    ),
    Order(
      id: '5',
      orderNum: 'T-000127',
      date: DateTime(2023, 03, 04),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'На станции отправления',
      color: Color.fromARGB(255, 1, 84, 140),
    ),
    Order(
      id: '6',
      orderNum: 'T-000128',
      date: DateTime(2023, 01, 29),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В порту отправления',
      color: Color.fromARGB(255, 147, 1, 137),
    ),
    Order(
      id: '7',
      orderNum: 'T-000129',
      date: DateTime(2022, 11, 30),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: по ЖД',
      color: Colors.yellow,
    ),
    Order(
      id: '8',
      orderNum: 'T-000130',
      date: DateTime(2022, 10, 06),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: Авто',
      color: Colors.red,
    ),
    Order(
      id: '9',
      orderNum: 'T-000131',
      date: DateTime(2022, 07, 27),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: Море',
      color: Colors.orange,
    ),
    Order(
      id: '10',
      orderNum: 'T-000132',
      date: DateTime(2022, 05, 12),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В порту назначения',
      color: Color.fromARGB(255, 110, 1, 140),
    ),
    Order(
      id: '11',
      orderNum: 'T-000133',
      date: DateTime(2022, 02, 07),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути по ЖД',
      color: Colors.yellow,
    ),
    Order(
      id: '12',
      orderNum: 'T-000134',
      date: DateTime(2021, 11, 15),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'На станции назначения',
      color: Colors.yellowAccent,
    ),
    Order(
      id: '13',
      orderNum: 'T-000135',
      date: DateTime(2021, 05, 01),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: по ЖД',
      color: Colors.yellow,
    ),
    Order(
      id: '14',
      orderNum: 'T-000136',
      date: DateTime(2021, 03, 13),
      route: 'Шанхай - Хабаровск',
      container: "4 x 20'DC",
      cargo: "Керамогранит",
      status: 'В пути: Море',
      color: Colors.orange,
    ),
  ];
}

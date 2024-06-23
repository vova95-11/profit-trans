import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'package:iconsax_flutter/iconsax_flutter.dart';

import 'package:open_filex/open_filex.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_tabbar.dart';
import 'package:profit_trans_lk/common/widgets/divider/divider.dart';
import 'package:profit_trans_lk/common/widgets/screen_subtitle.dart';
import 'package:profit_trans_lk/screens/orders/widgets/order_detail_info.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class OrderDetailScreenMobile extends StatelessWidget {
  const OrderDetailScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PtAppbarMobile(
          text: "Заказ № T000590",
          style: Theme.of(context).textTheme.headlineLarge,
          showBackArrow: true,
          automaticallyImplyLeading: true,
          shape: const Border(bottom: BorderSide(color: PtColors.appBarBorder, width: 0.5)),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, boxHeader) {
            return [
              const SliverAppBar(
                shadowColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                automaticallyImplyLeading: false,
                backgroundColor: PtColors.accent,
                pinned: true,
                floating: true,
                expandedHeight: 220,
                flexibleSpace: OrderDetailInfo(),

                /// Tabs
                bottom: PtTabBar(tabs: [
                  Tab(child: Text("Маршрут")),
                  Tab(child: Text("Документы")),
                  Tab(child: Text("Счета")),
                  Tab(child: Text("Менеджер")),
                ]),
              ),
            ];
          },
          body: TabBarView(children: [
            PtDetailTab(),
            PtOrderDocuments(),
            Container(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PtCardMenedger(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24),
                  child: Text("Не смогли решить вопрос?", style: Theme.of(context).textTheme.titleMedium),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24),
                  child: Text(
                    "Связаться с руководителем менеджера",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.transparent,
                          shadows: [const Shadow(color: PtColors.primary, offset: Offset(0, -5))],
                          decoration: TextDecoration.underline,
                          decorationColor: PtColors.primary,
                          decorationThickness: 1.5,
                          decorationStyle: TextDecorationStyle.dashed,
                        ),
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class PtCardMenedger extends StatelessWidget {
  const PtCardMenedger({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2, vertical: PtSizes.spaceBtwItems16),
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2, vertical: PtSizes.spaceBtwItems16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(PtSizes.cardRadiusLg16),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image(
                  width: 100,
                  height: 100,
                  image: AssetImage("assets/images/person.png"),
                ),
              ),
              SizedBox(width: 20),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Дмитрий Иванов",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      "Старший менеджер по сопровождению клиентов",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(height: 1.1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: PtSizes.spaceBtwItems16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Email:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
              Text("Dmitriy_Ivanov@profit-trans.ru", style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Рабочий:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
              Text("8 (800) 551-78-77 вн. 143", style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Сотовый:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
              Text("+7 (951) 029-38-11", style: Theme.of(context).textTheme.headlineSmall),
            ],
          ),
        ],
      ),
    );
  }
}

class PtDetailTab extends StatelessWidget {
  const PtDetailTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.defaultSpace24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 25),
                    CircleFilled(),
                    LineSolid(),
                    CircleFilled(),
                    LineSolid(),
                    CircleEmpty(),
                    LineDotted(),
                    CircleEmpty(),
                    LineDotted(),
                    CircleEmpty(),
                    LineDotted(),
                    CircleEmpty(),
                  ],
                ),
                SizedBox(width: 10),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      PtRouteOrder(location: "Порт отправления", address: "Shanghai"),
                      PtRouteOrder(location: "Порт назначения", address: "ВМТП Владивосток"),
                      PtRouteOrder(location: "Таможенный пост", address: "ВМТП"),
                      PtRouteOrder(location: "Станция отправления", address: "ВМТП"),
                      PtRouteOrder(location: "Станция назначения", address: "Силикатная"),
                      PtRouteOrder(location: "Склад клиента", address: "Москва, Фрунзе 7"),
                    ],
                  ),
                ),
              ],
            ),
            const PtDivider(),
            ScreenSubtitle(
              text: "История заказа",
              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
              number: "",
              padding: const EdgeInsets.symmetric(vertical: PtSizes.cardRadiusLg16 / 2),
            ),
            PtOrderHistory(),
            SizedBox(height: PtSizes.spaceBtwSections32),
          ],
        ),
      ),
    );
  }
}

class PtOrderHistory extends StatelessWidget {
  const PtOrderHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: PtSizes.spaceBtwItems16 / 1.3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: PtSizes.spaceBtwItems16 / 1.3),
                      child: Text("13.06.2024"),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(right: PtSizes.spaceBtwItems16 / 1.3),
                        child: Text(
                          "Дата готовности груза подтверждена отправителем Дата готовности груза подтверждена отправителем Дата готовности груза подтверждена отправителем",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    Text("21.06.2024"),
                  ],
                ),
                PtDivider(),
              ],
            ),
          );
        });
  }
}

class PtRouteOrder extends StatelessWidget {
  const PtRouteOrder({
    super.key,
    required this.location,
    required this.address,
  });

  final String location;
  final String address;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(location, style: Theme.of(context).textTheme.bodySmall, overflow: TextOverflow.ellipsis),
          Text(address, style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary, fontWeight: FontWeight.w500), overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class LineDotted extends StatelessWidget {
  const LineDotted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DottedLine(direction: Axis.vertical, dashColor: PtColors.primary, lineLength: 50, lineThickness: 3, dashLength: 5, dashRadius: 80);
  }
}

class CircleEmpty extends StatelessWidget {
  const CircleEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 20, width: 20, decoration: BoxDecoration(border: Border.all(color: PtColors.primary, width: 2), shape: BoxShape.circle, color: PtColors.white));
  }
}

class LineSolid extends StatelessWidget {
  const LineSolid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 2, height: 50, color: PtColors.primary);
  }
}

class CircleFilled extends StatelessWidget {
  const CircleFilled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(height: 20, width: 20, decoration: const BoxDecoration(shape: BoxShape.circle, color: PtColors.primary));
  }
}

class PtOrderDocuments extends StatelessWidget {
  const PtOrderDocuments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: PtSizes.spaceBtwItems16),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: PtSizes.spaceBtwItems16 / 2),
              child: TileList(),
            );
          }),
    );
  }
}

class TileList extends StatefulWidget {
  const TileList({super.key});

  @override
  State<TileList> createState() => _TileListState();
}

class _TileListState extends State<TileList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2),
      child: Card(
        elevation: 5,
        shadowColor: Colors.grey.shade100,
        child: ListTile(
          title: Text("Demo1"),
          trailing: IconButton(
            onPressed: () {
              OpenFilex.open("assets/Инвойс.pdf");
            },
            icon: Icon(Iconsax.document_download_copy),
          ),
        ),
      ),
    );
  }
}

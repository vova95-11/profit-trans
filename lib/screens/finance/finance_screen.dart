import 'package:flutter/material.dart';
import 'package:profit_trans_lk/config/responsive.dart';
import 'package:profit_trans_lk/screens/home/widgets/profile_card_widget.dart';
import 'package:profit_trans_lk/screens/home/widgets/desktop_widgets/drawer_desktop.dart';
import 'package:profit_trans_lk/screens/orders/widgets/notification_card_widget_2.dart';
import 'package:profit_trans_lk/screens/orders/widgets/order_widget.dart';
import 'package:profit_trans_lk/screens/orders/widgets/order_widget_short%20copy.dart';
import 'package:profit_trans_lk/screens/orders/widgets/order_widget_short.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class FinanceScreen extends StatefulWidget {
  const FinanceScreen({super.key});

  @override
  State<FinanceScreen> createState() => _FinanceScreenState();
}

class _FinanceScreenState extends State<FinanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isWideDesktop(context) || Responsive.isDesktop(context) || Responsive.isTablet(context)
        ? Scaffold(
            backgroundColor: PtColors.primaryBackground,
            body: SafeArea(
              child: Container(
                margin: const EdgeInsets.all(PtSizes.defaultSpace24 / 2),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(PtSizes.cardRadiusLg16),
                  child: Scaffold(
                    appBar: AppBar(
                      elevation: 0,
                      shadowColor: Colors.transparent,
                      backgroundColor: Colors.transparent,
                      surfaceTintColor: Colors.transparent,
                      leading: Container(
                        margin: const EdgeInsets.all(PtSizes.sm6),
                        child: const DrawerButton(),
                      ),
                      title: Text('ООО Ромашка', style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: PtColors.textPrimary)),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.all(PtSizes.xs4 * 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              navigationIcon(icon: Icons.person_2_outlined),
                              const SizedBox(width: 20),
                              navigationIcon(icon: Icons.logout_rounded),
                              const SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    drawer: const PtDrawerDesktop(),
                    body: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                NotificationCardWidget2(number: '0', titile: 'Текущие заказы:', color: Colors.green),
                                NotificationCardWidget2(number: '12', titile: 'Завершенные заказы:', color: Colors.green),
                                NotificationCardWidget2(number: '1', titile: 'Неоплаченные счета:', color: Colors.red),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20),
                                      OrderWidgetShortCopy(),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      ConstrainedBox(
                                        // ВЫЧИСЛИТЬ ТОЧНЫЙ РАЗМЕР ДАННОГО БЛОКА, ПОКА НА ГЛАЗ УСТАНОВИЛ
                                        constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height - 56 - 58),
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(horizontal: 12),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(top: 20),
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(20),
                                                ),
                                                padding: const EdgeInsets.all(20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Flexible(
                                                            child: Text("Неоплаченные счета",
                                                                style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis))),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                            color: PtColors.secondary,
                                                            borderRadius: BorderRadius.circular(100),
                                                          ),
                                                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                                          child: const Flexible(child: Text("Подробнее", overflow: TextOverflow.ellipsis)),
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
                                                            tableHeaderFinance("Дата документа"),
                                                            tableHeaderFinance("Плательщик"),
                                                            tableHeaderFinance("Сумма"),
                                                          ],
                                                        ),

                                                        /// Table data
                                                        tableRowFinance(context, date: '17.06.2024', payer: 'ООО "Рога и Копыта"', sum: "124 000 Р"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(bottom: 12, top: 12),
                                                child: ProfileCardWidget(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        : Container();
  }

  Widget navigationIcon({icon}) {
    return Icon(icon, color: PtColors.primaryBackground);
  }

  Widget tableHeaderFinance(text) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        child: Flexible(child: Text(text, style: Theme.of(context).textTheme.titleSmall!.copyWith(overflow: TextOverflow.ellipsis))),
      ),
    );
  }

  TableRow tableRowFinance(context, {date, payer, sum}) {
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
        // Дата
        Center(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Flexible(child: Text(date, overflow: TextOverflow.ellipsis)),
          ),
        ),
        // Плательщик
        Center(child: Flexible(child: Text(payer, overflow: TextOverflow.ellipsis))),
        // Сумма
        Center(child: Flexible(child: Text(sum, overflow: TextOverflow.ellipsis))),
      ],
    );
  }
}

// class HomeScreenMobile extends StatelessWidget {
//   const HomeScreenMobile({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body: Center(child: Container(height: 500, width: 500, color: Colors.yellow)));
//   }
// }

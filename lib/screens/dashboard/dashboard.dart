import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:profit_trans_lk/screens/dashboard/widgets/sideMenu.dart';

import '../../config/size_config.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SideMenu(),
          Expanded(
            flex: 10,
            child: Container(
              width: double.infinity,
              height: SizeConfig.screenHeight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Text('ООО Ромашка'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Заказ', style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 6),
                            Text('T-000987', style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Статус', style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 6),
                            Text('В порту отправления', style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Контейнер', style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 6),
                            Text("AAA-1235490-MMM -> 20'DC до 24 тонн SOC", style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Маршрут', style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 6),
                            Text("Шанхай - Москва", style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(width: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Груз', style: Theme.of(context).textTheme.titleMedium),
                            const SizedBox(height: 6),
                            Text("Автозапчасти", style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),

                    SizedBox(
                      height: 26,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        separatorBuilder: (context, index) => SizedBox(width: 200, child: customDottedLine100()),
                        itemBuilder: (_, index) {
                          return Icon(Icons.circle, size: 14, color: Colors.purple);
                        },
                      ),
                    ),
                    SizedBox(
                      height: 105,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 6,
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        separatorBuilder: (context, index) => SizedBox(width: 0),
                        itemBuilder: (_, index) {
                          return Container(width: 214, child: Text('Пункт отправления'));
                        },
                      ),
                    ),
                    // Container(
                    //   width: 200,
                    //   color: Colors.grey,
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.start,
                    //     mainAxisAlignment: MainAxisAlignment.center,
                    //     children: [
                    //       Container(
                    //         height: 25,
                    //         color: Colors.green,
                    //         child: Row(
                    //           children: [
                    //             Container(child: Icon(Icons.circle, size: 14, color: Colors.purple)),
                    //             Container(
                    //               child: customDottedLine100(),
                    //               width: 180,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       Container(child: Text('Пункт отправления')),
                    //     ],
                    //   ),
                    // ),

                    // Column(
                    //   children: [
                    //     SizedBox(
                    //       height: 60,
                    //       child: Center(
                    //         child: Row(
                    //           children: [
                    //             Image.asset('assets/images/port.png', height: 50, width: 50, color: Colors.purple),
                    //             SizedBox(width: 100),
                    //             Image.asset('assets/images/port.png', height: 50, width: 50, color: Colors.purple),
                    //             SizedBox(width: 100),
                    //           ],
                    //         ),
                    //       ),
                    //     ),
                    //     SizedBox(height: 20),
                    //     // Container(
                    //     //   color: Colors.red,
                    //     //   height: 26,
                    //     //   child: Center(
                    //     //     child: Row(
                    //     //       mainAxisAlignment: MainAxisAlignment.center,
                    //     //       children: [
                    //     //         Icon(Icons.circle, size: 14, color: Colors.purple),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.15, child: customDottedLine100()),
                    //     //         Icon(Iconsax.ship, color: Colors.purple),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.15, child: customDottedLine100()),
                    //     //         Icon(Icons.circle_outlined, size: 14, color: Colors.purple),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.15, child: customDottedLine100()),
                    //     //         //  SizedBox(width: 100, child: customDottedLine100()),
                    //     //         Icon(Icons.circle_outlined, size: 14, color: Colors.purple),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.15, child: customDottedLine100()),
                    //     //         //  SizedBox(width: 100, child: customDottedLine100()),
                    //     //         Icon(Icons.circle_outlined, size: 14, color: Colors.purple),
                    //     //       ],
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //     // SizedBox(height: 20),
                    //     // Container(
                    //     //   color: Colors.yellow,
                    //     //   height: 26,
                    //     //   child: Center(
                    //     //     child: Row(
                    //     //       mainAxisAlignment: MainAxisAlignment.center,
                    //     //       children: [
                    //     //         Text('Порт отправления'),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    //     //         Text('В пути: Море'),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    //     //         Text('Порт назначения'),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    //     //         Text('Станция отправления'),
                    //     //         SizedBox(width: MediaQuery.of(context).size.width * 0.08),
                    //     //         Text('Станция назначения'),
                    //     //       ],
                    //     //     ),
                    //     //   ),
                    //     // ),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget customDottedLine100() => Row(
        children: List.generate(
          300 ~/ 10,
          (index) => Expanded(
            child: Container(
              width: double.infinity,
              color: index % 2 == 0 ? Colors.transparent : Colors.purple,
              height: 1.2,
            ),
          ),
        ),
      );

  Widget customDottedLine40() => Row(
        children: List.generate(
          160 ~/ 8,
          (index) => Expanded(
            child: Container(
              color: index % 2 == 0 ? Colors.transparent : Colors.purple,
              height: 1.2,
            ),
          ),
        ),
      );
}

 // child:
                      // Column(
                      //   children: [
                      //     Image.asset('assets/images/port.png', height: 50, width: 50, color: Colors.purple),
                      //     Icon(Icons.circle_outlined, size: 14, color: Colors.purple),
                      //     Text('Порт отправления'),
                      //     Text('Шанхай'),
                      //   ],
                      // ),




//     Scaffold(
//       appBar: const CustomAppBar(),
//       drawer: const Drawer(),
//       body: Container(
//         child: Image(
//           image: AssetImage('assets/images/port.png'),
//         ),
//       ),
//     );
//   }
// }

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       title: Text('PROFIT TRANS', style: Theme.of(context).textTheme.headlineLarge!.apply(color: const Color.fromARGB(255, 17, 20, 81))),
//     );
//   }

//   @override
//   Size get preferredSize => const Size.fromHeight(56.0);
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/common/widgets/drawer/drawer_tabbar_view.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class PtDrawerDesktop extends StatefulWidget {
  const PtDrawerDesktop({super.key});

  @override
  State<PtDrawerDesktop> createState() => _PtDrawerDesktopState();
}

class _PtDrawerDesktopState extends State<PtDrawerDesktop> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Drawer(
        elevation: 0,
        child: Scaffold(
          backgroundColor: AppColors.bgSideMenu,
          appBar: AppBar(
            backgroundColor: PtColors.accent,
            surfaceTintColor: Colors.transparent,
            shape: const Border(bottom: BorderSide(color: PtColors.appBarBorder, width: 0.5)),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text('PROFIT TRANS', style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: PtColors.primary2, overflow: TextOverflow.ellipsis)),
                ),
                const SizedBox(width: 10),
                const Image(image: AssetImage('assets/logo/logo2.png'), width: 45, height: 45),
              ],
            ),
            leading: IconButton(
              highlightColor: Colors.transparent,
              onPressed: () => Get.back(),
              icon: const Icon(
                Iconsax.close_circle_copy,
                color: Colors.grey,
                size: 30,
              ),
            ),
          ),
          body: Container(
            color: AppColors.bgColor,
            child: NestedScrollView(
              headerSliverBuilder: (_, boxDrawer) {
                return [
                  const SliverAppBar(
                    shadowColor: Colors.transparent,
                    surfaceTintColor: Colors.transparent,
                    automaticallyImplyLeading: false,
                    backgroundColor: PtColors.accent,
                    pinned: true,
                    floating: true,
                    expandedHeight: 220,

                    //flexibleSpace: Container(height: 50, width: 50, color: Colors.red),

                    /// Tabs
                    bottom: TabBar(
                      tabAlignment: TabAlignment.start,
                      isScrollable: true,
                      padding: EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2),
                      indicatorColor: PtColors.primary,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.black54,
                      overlayColor: WidgetStateColor.transparent,
                      tabs: [
                        Tab(child: Text("Москва")),
                        Tab(child: Text("Владивосток")),
                        Tab(child: Text("Новосибирск")),
                      ],
                    ),
                  ),
                ];
              },
              body: const TabBarView(children: [
                PtDrawerTabBarView(
                  adress: "ТЦ Port Plaza, Проектируемый 4062-й проезд, д 6 ст16",
                  mail: "sales@profit-trans.ru",
                  phone: "8 (800) 551-78-77",
                ),
                PtDrawerTabBarView(
                  adress: "Ул. Станюковича 46, 8 этаж , офис 802",
                  mail: "sales@profit-trans.ru",
                  phone: "8 (800) 551-78-77",
                ),
                PtDrawerTabBarView(
                  adress: "Площадь имени Карла Маркса, д 7, офис 903",
                  mail: "sales@profit-trans.ru",
                  phone: "8 (800) 551-78-77",
                ),
              ]),
            ),
          ),

          // child: Container(
          //   decoration: BoxDecoration(
          //     color: AppColors.bgColor,
          //     borderRadius: BorderRadius.circular(15),
          //   ),
          //   padding: EdgeInsets.all(12),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.fromLTRB(12, 6, 0, 6),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Padding(
          //               padding: const EdgeInsets.only(top: 10.0),
          //               child: Text('PROFIT TRANS',
          //                   style: Theme.of(context).textTheme.headlineSmall!.apply(color: const Color.fromARGB(255, 17, 20, 81), overflow: TextOverflow.ellipsis)),
          //             ),
          //             Spacer(),
          //             const Image(image: AssetImage('assets/logo/logo2.png'), width: 35, height: 35),
          //             const SizedBox(width: 10),
          //           ],
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.only(left: 12),
          //         child: Divider(),
          //       ),
          //       const SizedBox(height: 16),
          //       ListView(
          //         shrinkWrap: true,
          //         children: [
          //           ...screens.entries.map((screen) {
          //             return ListTile(
          //               leading: screen.value['icon'],
          //               iconColor: const Color.fromARGB(255, 17, 20, 81),
          //               title: Text(
          //                 screen.key,
          //                 style: TextStyle(color: const Color.fromARGB(255, 17, 20, 81)),
          //               ),
          //               onTap: () {
          //                 Navigator.pushNamed(context, screen.value['routeName']);
          //               },
          //             );
          //           })
          //         ],
          //       ),
          //       Spacer(),
          //       Padding(
          //         padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
          //         child: Container(
          //           decoration: BoxDecoration(
          //             color: AppColors.bgColor,
          //             borderRadius: BorderRadius.circular(30),
          //           ),
          //           child: Image.asset("assets/logo/footer.png"),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}

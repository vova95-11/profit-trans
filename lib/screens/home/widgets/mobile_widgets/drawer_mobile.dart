import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/common/widgets/drawer/drawer_tabbar_view.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class PtDrawerMobile extends StatelessWidget {
  const PtDrawerMobile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.95,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(PtSizes.cardRadiusLg16 * 2))),
        elevation: 0,
        child: Scaffold(
          backgroundColor: PtColors.accent,
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
          body: NestedScrollView(
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
      ),
    );
  }
}

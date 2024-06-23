import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/screens/orders/order_detail_screen_mobile.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: PtSizes.spaceBtwItems16),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24 / 2),
        padding: const EdgeInsets.all(PtSizes.defaultSpace24 / 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(PtSizes.cardRadiusLg16),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("T000590", style: Theme.of(context).textTheme.titleMedium),
                Text("17.06.2024", style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: PtSizes.spaceBtwItems16 / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(child: Text("Шанхай - Москва", style: Theme.of(context).textTheme.headlineSmall, overflow: TextOverflow.ellipsis)),
                const SizedBox(width: PtSizes.defaultSpace24),
                Text("40’HC ZCY4509347", style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis),
              ],
            ),
            const SizedBox(height: PtSizes.spaceBtwItems16 / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    flex: 3,
                    child: Text.rich(
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      TextSpan(text: "Плановая дата выхода с таможни ", style: Theme.of(context).textTheme.titleMedium, children: <InlineSpan>[
                        TextSpan(
                          text: "03.07.2024",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: PtColors.primary),
                        ),
                      ]),
                    )),
                const SizedBox(width: PtSizes.defaultSpace24),
                Flexible(
                    flex: 2,
                    child: Text("Автозапчасти", textAlign: TextAlign.right, style: Theme.of(context).textTheme.headlineSmall, maxLines: 3, overflow: TextOverflow.ellipsis)),
              ],
            ),
            const SizedBox(height: PtSizes.spaceBtwItems16 / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Text("Таможенная очистка",
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: PtColors.primary2), maxLines: 1, overflow: TextOverflow.ellipsis)),
                ElevatedButton(
                  onPressed: () => Get.to(() => const OrderDetailScreenMobile()),
                  style: ElevatedButton.styleFrom(side: const BorderSide(color: PtColors.accent), shape: const CircleBorder(), backgroundColor: PtColors.white),
                  child: const Icon(Iconsax.arrow_circle_right_copy, color: PtColors.secondary),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

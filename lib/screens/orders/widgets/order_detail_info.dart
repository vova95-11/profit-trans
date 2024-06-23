import 'package:flutter/material.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class OrderDetailInfo extends StatelessWidget {
  const OrderDetailInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.spaceBtwItems16),
      child: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text("Шанхай - Москва", style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: PtColors.primary2), overflow: TextOverflow.ellipsis)),
              const SizedBox(width: PtSizes.defaultSpace24),
              Text("17.06.2024", style: Theme.of(context).textTheme.titleMedium, overflow: TextOverflow.ellipsis),
            ],
          ),

          // Text("Шанхай - Москва", style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: PtColors.primary2), overflow: TextOverflow.ellipsis),
          const SizedBox(height: PtSizes.spaceBtwItems16),
          Row(children: [
            Text("Контейнер:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
            const SizedBox(width: 10),
            Text("40’HC ZCY4509347",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
          ]),
          const SizedBox(height: PtSizes.spaceBtwItems16 / 2),
          Row(children: [
            Text("Груз:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
            const SizedBox(width: 10),
            Text("Автозапчасти",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
          ]),
          const SizedBox(height: PtSizes.spaceBtwItems16 / 2),
          Row(children: [
            Text("Текущий статус:", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
            const SizedBox(width: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: PtSizes.cardRadiusLg16 / 1.5, vertical: PtSizes.cardRadiusLg16 / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(PtSizes.cardRadiusLg16 / 2),
                color: PtColors.primary2.withOpacity(0.9),
              ),
              child: Text("Таможенная очистка",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white, fontWeight: FontWeight.w600), overflow: TextOverflow.ellipsis),
            ),
          ]),
        ],
      ),
    );
  }
}

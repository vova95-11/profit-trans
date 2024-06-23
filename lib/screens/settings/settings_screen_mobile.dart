import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/common/widgets/appbar/mobile_appbar.dart';
import 'package:profit_trans_lk/common/widgets/divider/divider.dart';
import 'package:profit_trans_lk/common/widgets/screen_subtitle.dart';
import 'package:profit_trans_lk/screens/home/widgets/mobile_widgets/drawer_mobile.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class SettingsScreenMobile extends StatelessWidget {
  const SettingsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const PtDrawerMobile(),
      appBar: PtAppbarMobile(
        automaticallyImplyLeading: true,
        showBackArrow: false,
        text: 'Профиль',
        style: Theme.of(context).textTheme.headlineLarge,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: PtSizes.defaultSpace24 / 2),
            child: IconButton(onPressed: () {}, icon: const Icon(Iconsax.edit_2_copy)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.spaceBtwItems16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ScreenSubtitle(
                padding: EdgeInsets.zero,
                text: "Реквизиты для документов:",
                number: '',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 19),
              ),
              SizedBox(height: PtSizes.spaceBtwItems16),
              Row(
                children: [Text("ИНН:"), SizedBox(width: 10), Text("9701037090", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2))],
              ),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              Row(
                children: [Text("КПП:"), SizedBox(width: 10), Text("770101001", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2))],
              ),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              Row(
                children: [Text("ОГРН:"), SizedBox(width: 10), Text("1167746346723", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2))],
              ),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              Row(
                children: [Text("ОКПО:"), SizedBox(width: 10), Text("01805409", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2))],
              ),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              Row(
                children: [Text("ОКВЭД:"), SizedBox(width: 10), Text("47.11", style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: PtColors.primary2))],
              ),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              PtDivider(),
              SizedBox(height: PtSizes.spaceBtwItems16),
              ScreenSubtitle(
                padding: EdgeInsets.zero,
                text: "Мои юр. лица:",
                number: '',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontSize: 19),
              ),
              SizedBox(height: PtSizes.spaceBtwItems16),
              Text("ООО «Рога и копыта»", style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: PtSizes.spaceBtwItems16 / 2),
              Text("ИП Иванов Иван Иванович", style: Theme.of(context).textTheme.headlineSmall),
              SizedBox(height: PtSizes.spaceBtwItems16),
              Row(
                children: [
                  Text("Нашли ошибку?", style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontSize: 17)),
                  SizedBox(width: 20),
                  OutlinedButton(onPressed: () {}, child: Text("Сообщить")),
                ],
              ),
              SizedBox(height: PtSizes.appBarHeight * 2),
              Center(
                  child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(PtColors.secondary2)),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24),
                        child: Text(
                          "Выйти",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(color: PtColors.white),
                        ),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

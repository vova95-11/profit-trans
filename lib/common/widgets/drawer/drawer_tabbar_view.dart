import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:profit_trans_lk/utils/constants/colors.dart';
import 'package:profit_trans_lk/utils/constants/sizes.dart';

class PtDrawerTabBarView extends StatelessWidget {
  const PtDrawerTabBarView({
    super.key,
    required this.adress,
    required this.mail,
    required this.phone,
  });

  final String adress;
  final String mail;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: PtSizes.defaultSpace24, vertical: PtSizes.spaceBtwItems16 * 2),
      child: Column(
        children: [
          ListTile(
            contentPadding: const EdgeInsets.only(),
            leading: const Icon(Iconsax.location_add, color: PtColors.primary),
            title: Text(adress, style: Theme.of(context).textTheme.headlineSmall!.copyWith(letterSpacing: 1.8)),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(),
            leading: const Icon(Iconsax.sms_edit, color: PtColors.black),
            title: Text(mail, style: Theme.of(context).textTheme.headlineSmall!.copyWith(letterSpacing: 1.8)),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(),
            leading: const Icon(Iconsax.call_add, color: PtColors.secondary),
            title: Text(phone, style: Theme.of(context).textTheme.headlineSmall!.copyWith(letterSpacing: 1.8)),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 0, 12),
            child: Container(
              decoration: BoxDecoration(
                color: PtColors.accent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset("assets/logo/footer.png"),
            ),
          ),
        ],
      ),
    );
  }
}

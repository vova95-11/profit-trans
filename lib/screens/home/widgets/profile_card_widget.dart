import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';

class ProfileCardWidget extends StatelessWidget {
  const ProfileCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(child: Text("Мой персональный менеджер", style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis))),
            ],
          ),
          const Divider(thickness: 0.5, color: Colors.grey),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(1000),
                child: Image(image: AssetImage('assets/images/person.png'), width: 60, height: 60),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Дмитрий Иванов", style: Theme.of(context).textTheme.titleMedium!.copyWith(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold)),
                    Text("Старший менеджер по сопровождению клиентов",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(overflow: TextOverflow.ellipsis, fontWeight: FontWeight.w100)),
                  ],
                ),
              ),
            ],
          ),
          const Divider(thickness: 0.5, color: Colors.grey),
          profileListTile("Email:", "Dmitriy_Ivanov@profit-trans.ru"),
          profileListTile("Рабочий:", "8 (800) 551-78-77 вн. 143"),
          profileListTile("Сотовый:", "+7 (951) 029-38-11"),
        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Flexible(
            child: Text(
              value,
              style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.black, overflow: TextOverflow.ellipsis),
            ),
          ),
        ],
      ),
    );
  }
}

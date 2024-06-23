import 'package:flutter/material.dart';
import 'package:profit_trans_lk/style/colors.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({super.key});

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${DateFormat("MMM, yyyy").format(_focusedDay)}", style: Theme.of(context).textTheme.headlineSmall),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          _focusedDay = DateTime(_focusedDay.year, _focusedDay.month - 1);
                        });
                      },
                      child: Icon(Icons.chevron_left, color: AppColors.black)),
                  InkWell(
                      onTap: () {
                        setState(() {
                          _focusedDay = DateTime(_focusedDay.year, _focusedDay.month + 1);
                        });
                      },
                      child: Icon(Icons.chevron_right, color: AppColors.black)),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          TableCalendar(
            focusedDay: _focusedDay,
            firstDay: DateTime.utc(2010),
            lastDay: DateTime.utc(2040),
            headerVisible: false,
            onFormatChanged: (result) {},
            daysOfWeekStyle: DaysOfWeekStyle(
              dowTextFormatter: (date, locale) {
                return DateFormat("EEE").format(date).toUpperCase();
              },
              weekendStyle: TextStyle(fontWeight: FontWeight.bold),
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPageChanged: (day) {
              _focusedDay = day;
              setState(() {});
            },
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(color: AppColors.yellow, shape: BoxShape.circle),
              markerDecoration: BoxDecoration(color: AppColors.yellow, shape: BoxShape.circle),
            ),
            eventLoader: (day) {
              /// make event on 22 date every month
              if (day.day == 22) {
                return [("Event name", canBubble: true)];
              }
              return [];
            },
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class ScheduleCalendar extends StatefulWidget {
  const ScheduleCalendar({super.key});

  @override
  State<ScheduleCalendar> createState() => _ScheduleCalendarState();
}

class _ScheduleCalendarState extends State<ScheduleCalendar> {
  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TableCalendar(
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            weekendStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
          locale: 'en_US',
          rowHeight: 30,
          headerStyle: HeaderStyle(
            titleTextStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            headerMargin: EdgeInsets.only(bottom: 10),
            formatButtonVisible: false,
            titleCentered: false,
            leftChevronVisible: false,
            rightChevronVisible: false,
          ),
          calendarStyle: CalendarStyle(
            outsideDaysVisible: false,
            todayDecoration: BoxDecoration(),
            todayTextStyle: TextStyle(
              color: Colors.green,
            ),
            selectedDecoration: BoxDecoration(
              color: Colors.lightBlue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5),
            ),
            selectedTextStyle: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
            weekendDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            weekendTextStyle: TextStyle(
              fontSize: 12,
            ),
            defaultDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            defaultTextStyle: TextStyle(
              fontSize: 12,
            ),
          ),
          availableGestures: AvailableGestures.all,
          selectedDayPredicate: (day) => isSameDay(day, today),
          focusedDay: today,
          firstDay: DateTime.utc(2023),
          lastDay: DateTime.utc(2050),
          onDaySelected: _onDaySelected,
        ),
      ),
    );
  }
}

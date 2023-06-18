import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class MyCalendar extends StatefulWidget {
  final DateTime today;
  const MyCalendar({Key? key,required this.today}) : super(key: key);

  @override
  State<MyCalendar> createState() => _MyCalendarState();
}

class _MyCalendarState extends State<MyCalendar> {
  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    _selectedDay = _focusedDay;

    return Column(
        children: [
        Card(
          margin: const EdgeInsets.all(8.0),
        elevation: 5.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)

          ),
          side: BorderSide(color: Colors.black, width: 2.0)
        ),

        child: TableCalendar(
          //onDaySelected: _onDaySelected,

            rowHeight: 60,
            focusedDay: widget.today,
          firstDay: DateTime.utc(2021,1,1),
          lastDay: DateTime.utc(2025,12,30),
          calendarFormat: CalendarFormat.month,
          weekendDays: const [DateTime.sunday,6],
          startingDayOfWeek: StartingDayOfWeek.monday,
          daysOfWeekHeight: 60.0,

        ),
        ),],
      );

  }
}


import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:gym_rat/main.dart';
import 'package:gym_rat/presentation/pages/settings_page.dart';
import 'package:gym_rat/widgets/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime now = DateTime.now();
  late DateTime _firstDay;
  late DateTime _lastDay;

  @override
  void initState() {
    super.initState();
    //_firstDay = DateTime(now.year, now.month, 1);
    //_lastDay = DateTime(now.year, now.month + 1, 0);
    _firstDay = DateTime(now.year, 1, 1);
    _lastDay = DateTime(now.year, 12, 31);
    //TODO Możliwość zmiany roku
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: appBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: homePage(),
        ),
      ),
      //bottomNavigationBar: bottomNavigationBar(),
    );
  }

  Column homePage() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 395,
          decoration: BoxDecoration(
            color: Colors.white12,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: tableCalendar(),
        ),
        if (_selectedDay != null)
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white12,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: dateTrainingInfoDisplay(),
            ),
          ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Container(
            child: Placeholder(),
          ),
        ),
      ],
    );
  }

//Widgets
  Padding dateTrainingInfoDisplay() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Text(
          '${DateFormat('dd MM yyyy').format(_selectedDay!)}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  TableCalendar<dynamic> tableCalendar() {
    return TableCalendar(
      locale: Localizations.localeOf(context).languageCode,
      focusedDay: _focusedDay,
      firstDay: _firstDay,
      lastDay: _lastDay,
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay;
          //print('Selected day: $_selectedDay');
          //print('Focused day: $_focusedDay');
        });
      },
      selectedDayPredicate: (day) => isSameDay(day, _selectedDay),
      onPageChanged: (focusedDay) {
        setState(() {
          _focusedDay = focusedDay;
        });
      },
      headerStyle: const HeaderStyle(
        formatButtonVisible: false,
        titleCentered: true,
        titleTextStyle: TextStyle(
          color: Colors.white,
        ),
        leftChevronIcon: Icon(
          Icons.arrow_left_sharp,
          color: Colors.white,
        ),
        rightChevronIcon: Icon(
          Icons.arrow_right_sharp,
          color: Colors.white,
        ),
      ),
      daysOfWeekStyle: const DaysOfWeekStyle(
        weekdayStyle: TextStyle(color: Colors.white),
        weekendStyle: TextStyle(color: Colors.white),
      ),
      calendarStyle: CalendarStyle(
          defaultTextStyle: const TextStyle(
            color: Colors.white,
          ),
          holidayTextStyle: const TextStyle(
            color: Colors.white,
          ),
          weekendTextStyle: const TextStyle(
            color: Colors.white,
          ),
          disabledTextStyle: const TextStyle(
            color: Color.fromARGB(255, 56, 55, 55),
          ),
          selectedDecoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blueGrey[700],
          ),
          isTodayHighlighted: true,
          todayDecoration: BoxDecoration(
            color: MyApp.mainAppColor,
            shape: BoxShape.circle,
          )),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:mountie_mobile_app/custom_widgets/events.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

import '../custom_widgets/events_list.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  //CalendarFormat format = CalendarFormat.month;
  //Map<DateTime, List<Event>>
  //var selectedEvents = eventList;

  List<Event> _makeEventList(DateTime date) {
    List<Event> toReturn = [];

    for (DateTime time in eventList.keys) {
      print("date below");
      print(date.toString());
      print("time below");
      print(time.toString());
      if (time.compareTo(date) == 0) {
        toReturn.add(eventList[time] as Event);
        print("******************************");
      }
    }

    print(toReturn);
    return toReturn;
  }

  // sets selected and focused date to now (today)
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    //selectedEvents = {};
    super.initState();
  }

  @override
  void dispose() {
    //selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime date) {
    return _makeEventList(date);
    //selectedEvents[date] ?? [];
  }

  //TEMP, think we can do a for loop to add all events from database
  // selectedEvents[DateTime(2022,8,15)].add(
  //    Event(title: 'first test', calendar: 1),
  //  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TableCalendar(
            //
            // sets up the calendar foundation
            focusedDay: selectedDay,
            firstDay: DateTime(2022, 7, 1),
            lastDay: DateTime(2030, 8, 1),
            calendarFormat: CalendarFormat.month,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},

            //
            // loads events to each day
            eventLoader: _getEventsForDay,

            //
            // Calendar Style
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              weekendStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
            ),
            headerStyle: HeaderStyle(
              rightChevronIcon: Icon(
                CupertinoIcons.chevron_forward,
                color: Color.fromARGB(255, 0, 47, 255),
                size: MediaQuery.of(context).size.height * .045,
              ),
              leftChevronIcon: Icon(
                CupertinoIcons.chevron_back,
                color: Color.fromARGB(255, 0, 47, 255),
                size: MediaQuery.of(context).size.height * .045,
              ),
              titleCentered: true,
              titleTextStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
            ),
            calendarStyle: const CalendarStyle(
              defaultTextStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              weekendTextStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              outsideTextStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              todayTextStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 47, 255),
              ),
              todayDecoration: BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                shape: BoxShape.circle,
              ),
              isTodayHighlighted: true,
              markersMaxCount: 4,
              selectedDecoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 47, 255),
                shape: BoxShape.circle,
              ),
              selectedTextStyle: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              markerDecoration: BoxDecoration(
                color: Color.fromARGB(255, 153, 153, 153),
                shape: BoxShape.circle,
              ),
              markerSize: 20,
            ),

            //
            // How it selects events and changes colors and stuff
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(
                () {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                },
              );
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
          ),
          /*..._getEventsForDay(selectedDay).map(
            (Event event) => ListTile(
              title: Text(event.title),
            ),
          ),*/
        ],
      ),
    );
  }
}


/*        onFormatChanged: (CalendarFormat _format) {
          setState(
            () {
              format = _format;
            },
          );
        },*/
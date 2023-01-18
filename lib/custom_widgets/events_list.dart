import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events.dart';

class EventList extends StatefulWidget {
  @override
  State<EventList> createState() => _EventListState();
}

Map<DateTime, Event> eventList = {
  DateTime.utc(2022, 12, 1, 20, 30): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @ 8:20pm",
    title: "Football @ Bryant",
    backendDateTime: DateTime.utc(2022, 12, 1, 20, 30),
  ),
  DateTime.utc(2022, 12, 11, 21, 50): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 11, 21, 50),
  ),
  DateTime.utc(2022, 12, 12, 20, 20): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @ 8:20pm",
    title: "Football @ Bryant",
    backendDateTime: DateTime.utc(2022, 12, 12, 20, 20),
  ),
  DateTime.utc(2022, 12, 13, 22, 0): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 13, 22, 0),
  ),
  DateTime.utc(2022, 12, 1, 15, 45): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @ 8:20pm",
    title: "Football @ Bryant",
    backendDateTime: DateTime.utc(2022, 12, 1, 15, 45),
  ),
  DateTime.utc(2022, 12, 28, 16, 5): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 10, 16, 5),
  ),
  DateTime.utc(2022, 12, 31, 17, 0): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @ 8:20pm",
    title: "Football @ Bryant",
    backendDateTime: DateTime.utc(2022, 12, 31, 17, 0),
  ),
  DateTime.utc(2022, 12, 1, 18, 0): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 31, 18, 0),
  ),
  DateTime.utc(2022, 12, 1, 19, 20): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 1, 19, 20),
  ),
  DateTime.utc(2022, 12, 1, 12, 20): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @ 9:50am",
    title: "Soccer @ Siolam",
    backendDateTime: DateTime.utc(2022, 12, 28, 12, 20),
  ),
};

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (Widget event in eventList.values) event,
      ],
    );
  }
}

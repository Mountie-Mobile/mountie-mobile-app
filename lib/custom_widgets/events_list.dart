import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'events.dart';

class EventList extends StatefulWidget {
  @override
  State<EventList> createState() => _EventListState();
}

Map<DateTime, Event> eventList = {
  DateTime(2022, 7, 1): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @8:20pm",
    title: "Football @ Bryant",
  ),
  DateTime(2022, 12, 11): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @9:50am",
    title: "Soccer @ Siolam",
  ),
  DateTime(2022, 12, 12): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @8:20pm",
    title: "Football @ Bryant",
  ),
  DateTime(2022, 12, 13): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @9:50am",
    title: "Soccer @ Siolam",
  ),
  DateTime(2022, 12, 1): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @8:20pm",
    title: "Football @ Bryant",
  ),
  DateTime(2022, 12, 10): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @9:50am",
    title: "Soccer @ Siolam",
  ),
  DateTime(2022, 12, 1): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "9/10/22 @8:20pm",
    title: "Football @ Bryant",
  ),
  DateTime(2022, 12, 31): Event(
    category: 5,
    customIcon: AssetImage('assets/sport_icons/football.png'),
    dateTime: "10/14/22 @9:50am",
    title: "Soccer @ Siolam",
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

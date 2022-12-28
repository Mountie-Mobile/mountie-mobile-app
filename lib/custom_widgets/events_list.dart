import 'package:flutter/cupertino.dart';
import 'events.dart';

class EventList extends StatefulWidget {
  @override
  State<EventList> createState() => _EventListState();
}

List<Event> eventList = [];

class _EventListState extends State<EventList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "9/10/22 @8:20pm",
          title: "Football @ Bryant",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "10/14/22 @9:50am",
          title: "Soccer @ Siolam",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "9/10/22 @8:20pm",
          title: "Football @ Bryant",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "10/14/22 @9:50am",
          title: "Soccer @ Siolam",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "9/10/22 @8:20pm",
          title: "Football @ Bryant",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "10/14/22 @9:50am",
          title: "Soccer @ Siolam",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "9/10/22 @8:20pm",
          title: "Football @ Bryant",
        ),
        Event(
          category: 5,
          customIcon: CupertinoIcons.add_circled,
          date_time: "10/14/22 @9:50am",
          title: "Soccer @ Siolam",
        ),
      ],
    );
  }
}

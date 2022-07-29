import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './event_pages/temp_page.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({Key? key}) : super(key: key);

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.book_fill),
            label: "Academia",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.double_music_note),
            label: "Arts",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house_fill),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.sportscourt_fill),
            label: "Athletics",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.ellipsis),
            label: "Misc",
          ),
        ],
        currentIndex: 2,
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: ((context) {
            if (index == 0) {
              return PageTemplate('First');
            }
            if (index == 1) {
              return PageTemplate('Second');
            }
            if (index == 2) {
              return PageTemplate('Third');
            }
            if (index == 3) {
              return PageTemplate('Fourth');
            }
            return PageTemplate('Fifth');
            // return index == 0
            //     ? PageTemplate("Hello World")
            //     : PageTemplate("Goodbye World");
          }),
        );
      },
    );
  }
}

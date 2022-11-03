import 'package:flutter/cupertino.dart';

import '../../custom_widgets/events.dart';

class HomeEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            //Announcement box
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              width: 350,
              height: 190,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(135, 0, 0, 0),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0,
                    spreadRadius: 2.0,
                  ),
                ],
                color: Color.fromARGB(255, 0, 47, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Center(
                child: Text(
                  "Welcome to the new and improved Mountie Mobile 2! On the bottom, there is a navigator to the various categories of events from our school. If you click the 3 lines button, you can navigate to other various screens within the app.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 300),
            child: const Text(
              "Upcoming Events:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Event(
            title: "Basketball",
            category: 5,
            icon: Icon(CupertinoIcons.add),
          )
        ],
      ),
    );
  }
}

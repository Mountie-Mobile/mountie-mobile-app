import 'package:flutter/cupertino.dart';
import 'package:mountie_mobile_app/custom_widgets/events.dart';
import 'package:mountie_mobile_app/custom_widgets/events_list.dart';

class AthleticsEventPage extends StatefulWidget {
  @override
  State<AthleticsEventPage> createState() => _AthleticsEventPageState();
}

class _AthleticsEventPageState extends State<AthleticsEventPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      //navigationBar: CustomNavBar(),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(50, 20, 50, 10),
            child: const Center(
              child: Text(
                "Athletic Events",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: const Text(
              "No events found",
            ),
          )
        ],
      ),
    );
  }
}

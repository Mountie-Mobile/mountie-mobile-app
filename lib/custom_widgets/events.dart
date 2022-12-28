import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class Event extends StatefulWidget {
  final String title;
  final int category;
  final AssetImage customIcon;
  final String date_time;

  int getCategory() {
    return category;
  }

  String getTitle() {
    return title;
  }

  const Event(
      {super.key,
      required this.title,
      required this.category,
      required this.customIcon,
      required this.date_time});

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      //New Page on pressed
      onPressed: () {
        print("object");
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            border: Border.all(
                color: const Color.fromARGB(255, 0, 47, 255),
                width: 5,
                style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            color: const Color.fromARGB(255, 255, 255, 255)),
        height: 70,
        width: 500,
        child: Container(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    //Display date and time
                    widget.date_time,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 15,
                    ),
                  )
                ],
              ),
              const Spacer(flex: 1),
              Container(
                  alignment: Alignment.center,
                  child: Image(
                    image: widget.customIcon,
                    height: 40,
                    width: 40,
                  )

                  /*Icon(
                  //Display custom icon
                  widget.customIcon,
                  size: 40,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),*/
                  )
            ],
          ),
        ),
      ),
    );
  }
}

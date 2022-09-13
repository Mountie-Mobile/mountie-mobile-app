import 'package:flutter/cupertino.dart';

class HomeEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              margin: const EdgeInsets.fromLTRB(50, 0, 50, 10),
              width: 350,
              height: 350,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 47, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: const Text(
                "Welcome to Mountie Mobile 2!",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 20, 0, 250),
            child: const Text(
              "Upcoming Events:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}

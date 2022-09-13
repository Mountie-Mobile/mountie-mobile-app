import 'package:flutter/cupertino.dart';

class ArtsEventPage extends StatelessWidget {
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
                'Arts Events',
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

import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class Event extends StatelessWidget {
  final String title;
  final int category;
  final Icon icon;

  const Event(
      {super.key,
      required this.title,
      required this.category,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color.fromARGB(175, 163, 157, 157)),
      height: 80,
      width: 300,
      child: Container(
        alignment: Alignment.topCenter,
        child: Row(
          children: [
            Text(
              title,
              // textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            icon
          ],
        ),
      ),
    );
  }
}

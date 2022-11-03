import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class Event extends StatelessWidget {
  final String title;
  final int category;

  const Event({super.key, required this.title, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color.fromARGB(175, 163, 157, 157)),
      height: 60,
      width: 300,
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

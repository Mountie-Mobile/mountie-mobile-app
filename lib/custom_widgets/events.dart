import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class Event extends StatelessWidget {
  final String title;
  final int category;

  const Event({super.key, required this.title, required this.category});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          color: Color.fromARGB(175, 163, 157, 157)),
      height: 50,
      width: 150,
      child: Text(
        title,
        textAlign: TextAlign.center,
      ),
    );
  }
}

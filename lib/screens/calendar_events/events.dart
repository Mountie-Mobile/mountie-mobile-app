import 'package:flutter/foundation.dart';

class Event {
  final String title;
  final int category;

  Event({required this.title, required this.category});

  String toString() => this.title;
}

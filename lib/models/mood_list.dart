import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mood {
  final IconData icon;
  final name;
  Mood({this.icon, this.name});
}

List<Mood> moodList = [
  Mood(
    icon: Icons.sentiment_very_satisfied,
    name: 'Great',
  ),
  Mood(
    icon: Icons.sentiment_satisfied,
    name: 'Good',
  ),
  Mood(
    icon: Icons.sentiment_very_dissatisfied,
    name: 'Okay',
  ),
  Mood(
    icon: Icons.sentiment_dissatisfied,
    name: 'Bad',
  ),
  Mood(
    icon: Icons.sentiment_very_dissatisfied,
    name: 'Awful',
  ),
];

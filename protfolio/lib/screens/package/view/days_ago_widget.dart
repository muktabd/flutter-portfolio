import 'package:flutter/material.dart';

class DaysAgoWidget extends StatelessWidget {
  final DateTime targetDate;

  const DaysAgoWidget({super.key, required this.targetDate});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = now.difference(targetDate).inDays;

    return Text('($difference days ago)', style: TextStyle(color: Colors.grey, fontSize: 12));
  }
}

import 'package:flutter/material.dart';
import 'package:paychecked/components/StatsChart.Dart';

class Stats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
          child: FractionallySizedBox(
        widthFactor: 0.9,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'My Productivity',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple[900]),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}

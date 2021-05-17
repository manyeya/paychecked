import 'package:flutter/material.dart';
import 'package:paychecked/components/TimeTile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'You Have 2 Tasks To Do',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[500],
                ),
              ),
              for (var i = 0; i < 2; i++) TimeTile()
            ],
          ),
        ),
      ),
    );
  }
}

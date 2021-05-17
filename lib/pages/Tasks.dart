import 'package:flutter/material.dart';
import 'package:paychecked/components/CurrentTaskCard.dart';
import 'package:paychecked/components/TasksList.dart';
class Tasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Center(
          child: Column(
            children: [
              CurrentTaskCard(),
              Expanded(child: TaskList())
            ],
          )),
    );
  }
}

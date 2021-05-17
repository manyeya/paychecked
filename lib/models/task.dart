import 'package:flutter/material.dart';

class Task {
  final String title;
  final String time;
  final String taskImportance;
  final String taskType;
  final Icon icon;
  final bool active;

  Task({this.title, this.time, this.taskImportance, this.taskType, this.icon, this.active = false});
}

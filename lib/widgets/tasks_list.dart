import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(text: tasks[0].name, isChecked: tasks[0].isDone),
        TaskTile(text: tasks[1].name, isChecked: tasks[1].isDone),
        TaskTile(text: tasks[2].name, isChecked: tasks[2].isDone),
      ],
    );
  }
}

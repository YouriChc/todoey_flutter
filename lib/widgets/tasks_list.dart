import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:todoeyflutter/models/task.dart';

class TasksList extends StatefulWidget {
  TasksList(this.tasks);

  List<Task> tasks;

  @override
  State<StatefulWidget> createState() => _TaskListState();
}

class _TaskListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
            text: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            checkBoxCallBack: (checkBoxState) {
              setState(() {
                widget.tasks[index].toogleDone();
              });
            });
      },
      itemCount: widget.tasks.length,
    );
  }
}

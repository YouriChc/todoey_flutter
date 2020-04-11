import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.text, this.isChecked});

  final bool isChecked;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text,
        style: TextStyle(
          fontSize: 25,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
//        onChanged: toggleCheckBoxState,
      ),
    );
  }
}

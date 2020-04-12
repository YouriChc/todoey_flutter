import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen(this.newTaskTextCallBack);

  final Function newTaskTextCallBack;
  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Add Task',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 25,
                  ),
                ),
                TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    fillColor: Colors.lightBlueAccent,
                  ),
                  onChanged: (value) {
                    text = value;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                  color: Colors.lightBlueAccent,
                  onPressed: () {
                    newTaskTextCallBack(text);
                  },
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

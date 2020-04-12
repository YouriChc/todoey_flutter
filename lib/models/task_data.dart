import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoeyflutter/models/task.dart';

class TaskData with ChangeNotifier {
  List<Task> _tasks = [];

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String taskName) {
    _tasks.add(Task(name: taskName));
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task) {
    task.toogleDone();
    notifyListeners();
  }
}

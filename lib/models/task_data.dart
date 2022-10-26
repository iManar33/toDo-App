import 'package:flutter/foundation.dart'; //material  = foundation + other packages
import 'task.dart';
import 'package:collection/collection.dart';
class TaskData extends ChangeNotifier  {
  List<Task> _tasks = [];
int get taskCount {
  return _tasks.length;
}
void addTask(String  newData){
  _tasks.add(Task(name: newData));
  notifyListeners();
}
UnmodifiableListView<Task> get tasks {
  return UnmodifiableListView(_tasks);
}
void updateTask (Task task){
  task.toggleDone();
  notifyListeners();
}
void deleteTask(Task task){
  _tasks.remove(task);
  notifyListeners();
}
}
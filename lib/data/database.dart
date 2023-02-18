import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // ref the box
  final _myBox = Hive.box('mybox');

  // runs this method if the app has been opened 1st time ever
  void createInitialData() {
    // list of items
    toDoList = [
      ["Shoot rollers", false],
      ["Burn tires", false],
      ["Call leo", false],
    ];
  }

  // to load the data
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // to update the data
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}

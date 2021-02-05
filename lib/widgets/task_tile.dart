import 'package:flutter/material.dart';

class TaskTileWidget extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function taskTilecallback;
  TaskTileWidget({this.isChecked, this.taskTitle, this.taskTilecallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null)),
      trailing: Checkbox(
        value: isChecked,
        onChanged: taskTilecallback,
        activeColor: Colors.lightBlueAccent,
      ),
    );
  }
}

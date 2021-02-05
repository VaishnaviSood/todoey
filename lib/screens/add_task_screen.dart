import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskcallback;
  AddTaskScreen(this.addTaskcallback);

  @override
  Widget build(BuildContext context) {
    String newTask = '';
    return Container(
      color: Color(0xff757575),
      child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.lightBlueAccent,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (text) {
                  newTask = text;
                },
              ),
              FlatButton(
                onPressed: () {
                  addTaskcallback(newTask);
                },
                child: Text(
                  'ADD',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.lightBlueAccent,
              ),
            ],
          )),
    );
  }
}

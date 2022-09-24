import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todoey/models/tasks.dart';
import 'package:todoey/screens/tasks_screen.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}

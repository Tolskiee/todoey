import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is a task',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(isChecked, checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggleCheckboxState;

  TaskCheckbox(this.checkboxState, this.toggleCheckboxState);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}

// class TaskTile extends StatefulWidget {
//   bool? isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('This is a task'),
//       trailing: TaskCheckbox(),
//
//
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }   );
//   }
// }
//
// class TaskCheckbox extends StatelessWidget {
//   final bool checkboxState;
//
//   TaskCheckbox(this.checkboxState);
//
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       checkColor: Colors.white,
//       value: checkboxState,
//       onChanged: (newValue) {
//         // setState() {
//         //   isChecked = newValue;
//         //   print(isChecked);
//         //}
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
final String taskTitle;
  bool isChecked = false;
  final ValueChanged<bool?> checkboxCallback;
  final VoidCallback longPressedCallback;
  TaskTile({required this.taskTitle ,required this.isChecked, required this.checkboxCallback, required  this.longPressedCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressedCallback ,
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
      value: isChecked,
        onChanged: checkboxCallback,

      ),
    );
  }
}
//(bool? checkboxState) {
//         if (checkboxState != null) {
//           setState(() {
//             isChecked = checkboxState;
//           });
//         }
//       }


// class TaskCheckbox extends StatelessWidget {
//  final bool checkboxState;
//  final ValueChanged<bool?>  toggleCheckboxesState; // ValueChanged<bool?> = void Function (bool?)
//      TaskCheckbox({required this.checkboxState , required  this.toggleCheckboxesState});
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       activeColor: Colors.lightBlueAccent,
//       value: checkboxState,
//       onChanged: toggleCheckboxesState,
//     );
//   }
// }


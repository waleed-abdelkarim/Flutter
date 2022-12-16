import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String title;
  final void Function(bool?)? checkboxCallback;
  final VoidCallback longPresCallback;

  TaskTile({required this.isChecked, required this.title, required this.checkboxCallback, required this.longPresCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPresCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      )
    );
  }
}


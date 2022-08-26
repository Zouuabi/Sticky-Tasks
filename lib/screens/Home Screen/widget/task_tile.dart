import 'package:flutter/material.dart';

import '../../../constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({Key? key, this.task, required this.sol}) : super(key: key);

  final String? task;
  final Function(bool value) sol;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  Color taskColor = unCheckedTaskColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task ?? 'Nothing',
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: isChecked ? checkedTaskColor : unCheckedTaskColor,
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kPrimaryColor,
        value: isChecked,
        onChanged: (value) {
          setState(() {
            isChecked = !isChecked;
            widget.sol(isChecked);
          });
        },
      ),
    );
  }
}

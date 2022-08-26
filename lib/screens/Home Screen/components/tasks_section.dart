import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class TasksSection extends StatelessWidget {
  const TasksSection({Key? key, required this.taskList}) : super(key: key);
  final List<Widget> taskList;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      width: double.infinity,
      decoration: kTaskBoxDecoration,
      child: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (BuildContext context, int index) {
          return taskList[index];
        },
      ),
    ));
  }
}

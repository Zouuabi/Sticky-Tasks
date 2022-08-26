import 'package:flutter/material.dart';
import 'package:todoey/screens/Add%20Task%20Screen/add_task_screen.dart';

import '../../constants.dart';
import 'components/tasks_section.dart';
import 'components/top_app_section.dart';
import 'widget/task_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<TaskTile> taskList = [];

  int numberOfTasks = 0;

  String? shownTask;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryColor,
        onPressed: () {
          String? currentTask;
          showModalBottomSheet(
              context: context,
              builder: (context) => AddTaskScreen(
                    blabla: (value) {
                      setState(() {
                        currentTask = value;
                        shownTask = value;
                      });
                    },
                    onPlus: () {
                      bool checked = false;
                      var currentTile = TaskTile(
                        sol: (isChecked) {
                          setState(() {
                            checked = isChecked;
                            if (checked == false) {
                              numberOfTasks++;
                            } else if (checked == true) {
                              numberOfTasks--;
                            }
                          });
                        },
                        task: currentTask,
                      );
                      setState(() {
                        taskList.add(currentTile);
                        numberOfTasks++;
                        shownTask = null;
                      });
                      Navigator.pop(context);
                    },
                  ));
        },
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAppSection(numberOfTasks: numberOfTasks, shownTask: shownTask),
            TasksSection(
              taskList: taskList,
            ),
          ],
        ),
      ),
    );
  }
}

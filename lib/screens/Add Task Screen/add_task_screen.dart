import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key, required this.onPlus, required this.blabla});
  final VoidCallback onPlus;
  final Function(String) blabla;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF858585),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 60, left: 60),
          child: Column(children: [
            const Text(
              'Add Task',
              style: TextStyle(color: kPrimaryColor, fontSize: 30),
            ),
            TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                onChanged: blabla),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: onPlus,
                child: Container(
                    width: double.infinity,
                    height: 40,
                    color: kPrimaryColor,
                    child: const Center(
                        child: Text(
                      'Add',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )))),
          ]),
        ),
      ),
    );
  }
}

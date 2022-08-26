import 'package:flutter/material.dart';

import '../../../constants.dart';

class TopAppSection extends StatelessWidget {
  const TopAppSection({Key? key, this.numberOfTasks = 0, this.shownTask})
      : super(key: key);
  final int? numberOfTasks;
  final String? shownTask;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 30, bottom: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(
            Icons.list,
            size: 50,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(height: 10),
        const Text('Todoey', style: kTitleTextSyle),
        Text(
          '$numberOfTasks Tasks',
          style: const TextStyle(
            color: kSubTitleColor,
            fontSize: 20,
          ),
        ),
        Center(
          child: Text(
            shownTask ?? '',
            style: kTitleTextSyle.copyWith(color: Colors.black, fontSize: 30),
          ),
        ),
      ]),
    );
  }
}

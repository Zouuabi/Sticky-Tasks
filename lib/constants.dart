import 'package:flutter/material.dart';

const Color kPrimaryColor = Colors.lightBlueAccent;
const Color kTitleColor = Colors.white;
const Color kSubTitleColor = Colors.white70;
const Color kTasksColor = Colors.black;
const Color unCheckedTaskColor = Colors.black;
const Color checkedTaskColor = Colors.black54;

const TextStyle kTitleTextSyle = TextStyle(
  color: kTitleColor,
  fontSize: 50,
  fontWeight: FontWeight.w700,
);

const BoxDecoration kTaskBoxDecoration = BoxDecoration(
    color: kTitleColor,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(25), topRight: Radius.circular(25)));

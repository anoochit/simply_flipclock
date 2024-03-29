// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ClockTheme {
  TextStyle textStyle = const TextStyle();
  ClockTheme(BuildContext context) {
    textStyle = Theme.of(context).textTheme.displayLarge!;
  }
}

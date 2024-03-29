// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

abstract class ClockTheme {
  // TODO : add more theme details
  TextStyle textStyle = const TextStyle();

  ClockTheme(BuildContext context) {
    textStyle = Theme.of(context).textTheme.displayLarge!;
  }

  TextStyle sizeM() {
    return TextStyle(fontSize: textStyle.fontSize);
  }

  TextStyle sizeL() {
    return TextStyle(fontSize: textStyle.fontSize! * 2);
  }

  TextStyle sizeXL() {
    return TextStyle(fontSize: textStyle.fontSize! * 2.5);
  }
}

import 'package:flutter/material.dart';

import '../data/models/clock_theme.dart';

class SimpleTheme extends ClockTheme {
  SimpleTheme(super.context);

  sizeM() {
    return TextStyle(fontSize: textStyle.fontSize);
  }

  sizeL() {
    return TextStyle(fontSize: textStyle.fontSize! * 2);
  }

  sizeXL() {
    return TextStyle(fontSize: textStyle.fontSize! * 2.5);
  }
}

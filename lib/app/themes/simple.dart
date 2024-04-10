import 'package:flutter/material.dart';

import '../data/models/clock_theme.dart';

class SimpleTheme extends ClockTheme {
  SimpleTheme(super.context);

  @override
  TextStyle sizeM() {
    return TextStyle(
      fontSize: textStyle.fontSize,
      fontWeight: FontWeight.w500,
      height: 1.15,
    );
  }

  @override
  TextStyle sizeL() {
    return TextStyle(
      fontSize: textStyle.fontSize! * 2,
      fontWeight: FontWeight.w500,
      height: 1.15,
    );
  }

  @override
  TextStyle sizeXL() {
    return TextStyle(
      fontSize: textStyle.fontSize! * 2.5,
      fontWeight: FontWeight.w500,
      height: 1.15,
    );
  }

  TextStyle sizeXXL() {
    return TextStyle(
      fontSize: textStyle.fontSize! * 4,
      fontWeight: FontWeight.w500,
      height: 1.15,
    );
  }
}

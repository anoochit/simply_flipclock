import 'package:flutter/material.dart';

import 'package:get/get.dart';

class LandscapeClockView extends GetView {
  const LandscapeClockView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'LandscapeClockView is working',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}

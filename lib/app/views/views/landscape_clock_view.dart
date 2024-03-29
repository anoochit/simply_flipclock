import 'dart:async';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:simply_flipclock/app/modules/home/controllers/home_controller.dart';

import '../../themes/simple.dart';

class LandscapeClockView extends GetView<HomeController> {
  const LandscapeClockView({super.key});

  @override
  Widget build(BuildContext context) {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      controller.hour.value = DateTime.now().hour;
      controller.minute.value = DateTime.now().minute;
      controller.second.value = DateTime.now().second;
    });

    var format = NumberFormat("00");

    return Center(
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // hour
            Text(
              format.format(controller.hour.value),
              style: SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: SimpleTheme(context).sizeXL(),
            ),

            // minute
            Text(
              format.format(controller.minute.value),
              style: SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: SimpleTheme(context).sizeXL(),
            ),

            // seconds
            Text(
              format.format(controller.second.value),
              style: SimpleTheme(context).sizeXL(),
            ),
          ],
        ),
      ),
    );
  }
}

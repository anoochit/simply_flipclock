import 'dart:async';

import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:simply_flipclock/app/modules/home/controllers/home_controller.dart';

import '../../themes/simple.dart';

class LandscapeClockView extends GetView<HomeController> {
  const LandscapeClockView({super.key});

  @override
  Widget build(BuildContext context) {
    var format = NumberFormat("00");

    return Center(
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // hour
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.hour.value,
              textStyle: SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: SimpleTheme(context).sizeXL(),
            ),

            // minute
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.minute.value,
              textStyle: SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: SimpleTheme(context).sizeXL(),
            ),

            // seconds
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.second.value,
              textStyle: SimpleTheme(context).sizeXL(),
            ),
          ],
        ),
      ),
    );
  }
}

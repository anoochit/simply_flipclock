import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:simply_flipclock/app/modules/home/controllers/home_controller.dart';

import '../../themes/simple.dart';

class LandscapeClockView extends GetView<HomeController> {
  const LandscapeClockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // hour
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.hour.value,
              textStyle: context.isLargeTablet
                  ? SimpleTheme(context).sizeXXL()
                  : SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: context.isLargeTablet
                  ? SimpleTheme(context).sizeXXL()
                  : SimpleTheme(context).sizeXL(),
            ),

            // minute
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.minute.value,
              textStyle: context.isLargeTablet
                  ? SimpleTheme(context).sizeXXL()
                  : SimpleTheme(context).sizeXL(),
            ),

            Text(
              ':',
              style: context.isLargeTablet
                  ? SimpleTheme(context).sizeXXL()
                  : SimpleTheme(context).sizeXL(),
            ),

            // seconds
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.second.value,
              textStyle: context.isLargeTablet
                  ? SimpleTheme(context).sizeXXL()
                  : SimpleTheme(context).sizeXL(),
            ),
          ],
        ),
      ),
    );
  }
}

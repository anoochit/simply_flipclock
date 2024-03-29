import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/home/controllers/home_controller.dart';
import '../../themes/simple.dart';

class PortraitClockView extends GetView<HomeController> {
  const PortraitClockView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // hour
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.hour.value,
              textStyle: SimpleTheme(context).sizeXL(),
            ),

            // minute
            AnimatedFlipCounter(
              wholeDigits: 2,
              value: controller.minute.value,
              textStyle: SimpleTheme(context).sizeXL(),
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

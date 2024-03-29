import 'package:flutter/material.dart';
import 'package:flutter_flip_clock/flutter_flip_clock.dart';

import 'package:get/get.dart';
import 'package:simply_flipclock/app/views/views/landscape_clock_view.dart';
import 'package:simply_flipclock/app/views/views/portrait_clock_view.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            // show portrait
            return PortraitClockView();
          } else {
            // show landscape
            return LandscapeClockView();
          }
        },
      ),
    );
  }
}

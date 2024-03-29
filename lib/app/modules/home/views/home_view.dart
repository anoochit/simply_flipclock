import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../views/views/landscape_clock_view.dart';
import '../../../views/views/portrait_clock_view.dart';
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
            return const PortraitClockView();
          } else {
            // show landscape
            return LandscapeClockView();
          }
        },
      ),
    );
  }
}

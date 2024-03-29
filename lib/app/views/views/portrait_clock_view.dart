import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flip_clock/flutter_flip_clock.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

class PortraitClockView extends GetView {
  const PortraitClockView({super.key});

  @override
  Widget build(BuildContext context) {
    var format = NumberFormat("00");

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // hour
          FlipPanel<int>.stream(
            itemStream: Stream.periodic(Duration(hours: 1), (count) => count),
            itemBuilder: (context, value) => Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                format.format(DateTime.now().hour),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white),
              ),
            ),
            initValue: DateTime.now().hour,
          ),

          Gap(8.0),

          FlipPanel<int>.stream(
            itemStream: Stream.periodic(Duration(minutes: 1), (count) => count),
            itemBuilder: (context, value) => Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                format.format(DateTime.now().minute),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.white),
              ),
            ),
            initValue: DateTime.now().minute,
          ),

          Gap(8.0),

          // seconds
          FlipPanel<int>.stream(
            itemStream: Stream.periodic(Duration(seconds: 1), (count) => count),
            itemBuilder: (context, value) => Container(
              color: Colors.black,
              padding: const EdgeInsets.symmetric(horizontal: 6.0),
              child: Text(
                format.format(DateTime.now().second),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50.0,
                  color: Colors.white,
                ),
              ),
            ),
            initValue: DateTime.now().second,
          ),
        ],
      ),
    );
  }
}

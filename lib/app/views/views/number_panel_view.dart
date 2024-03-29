import 'package:flutter/material.dart';
import 'package:flutter_flip_clock/flutter_flip_clock.dart';

import 'package:get/get.dart';

class NumberPanelView extends GetView {
  const NumberPanelView(
      {super.key,
      required this.periodic,
      required this.textStyle,
      required this.background,
      required this.forceground});

  final Duration periodic;
  final TextStyle textStyle;

  final Color background;
  final Color forceground;

  @override
  Widget build(BuildContext context) {
    return FlipPanel<int>.stream(
      itemStream: Stream.periodic(
        periodic,
        (count) => count % 1,
      ),
      itemBuilder: (context, value) => Container(
        color: background,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          '$value',
          style: textStyle,
        ),
      ),
      initValue: DateTime.now().second,
    );
  }
}

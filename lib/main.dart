import 'package:flutter/material.dart';
import 'package:fullscreen_window/fullscreen_window.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  WakelockPlus.enable();
  FullScreenWindow.setFullScreen(true);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}

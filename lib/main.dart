import 'package:flutter/material.dart';
import 'package:fullscreen_window/fullscreen_window.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // enable wake lock
  WakelockPlus.enable();

  // set fullscreen
  FullScreenWindow.setFullScreen(true);

  runApp(
    GetMaterialApp(
      title: "Simply Flip Clock",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      themeMode: ThemeMode.system,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
    ),
  );
}

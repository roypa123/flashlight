import 'package:flashlight/flash_light_app.dart';
import 'package:flashlight/init_flash_app.app.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  await initFlashLightApp();
  runApp(const FlashLightApp());
}

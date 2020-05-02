import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_preferences/app.dart';
import 'package:hive_preferences/service_locator.dart';

void main() async {
  await Hive.initFlutter();
  await setupServiceLocator();
  runApp(App());
}

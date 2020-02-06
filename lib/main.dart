import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ServiceLocator.dart';
import 'app.dart';
const String title = 'Call Me Maybe';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitUp

  ]);
  setupLocator();
  runApp(App(title: title));
}

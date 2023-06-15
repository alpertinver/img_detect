import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:img_detect/HomePage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Detection App',
      home: HomePage(),
    );
  }
}

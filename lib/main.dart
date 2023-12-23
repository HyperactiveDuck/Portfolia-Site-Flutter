import 'package:flutter/material.dart';
import 'screens/web_desktop.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DesktopWeb();
  }
}

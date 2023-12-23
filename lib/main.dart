import 'package:flutter/material.dart';
import 'screens/web_desktop.dart';
import 'screens/web_mobile.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    return deviceWidth > 800 ? const DesktopWeb() : const WebMobile();
  }
}

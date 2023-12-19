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
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return DesktopWeb();
  }
}

import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:fwebportfolio/widgetsMobile/navbarmobile.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/widgetsMobile/intro_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/about_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/skills_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/expereince_mobile.dart';

class WebMobile extends StatefulWidget {
  const WebMobile({super.key});

  @override
  State<WebMobile> createState() => _WebMobileState();
}

class _WebMobileState extends State<WebMobile> {
  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBarMobile(devWidth: devWidth, devHeight: devHeight),
              IntroMobile(devWidth: devWidth, devHeight: devHeight),
              AboutMobile(devWidth: devWidth, devHeight: devHeight),
              SkillsMobile(devHeight: devHeight, devWidth: devWidth),
              ExperienceMobile(devHeight: devHeight, devWidth: devWidth)
            ],
          ),
        ),
      ),
    );
  }
}

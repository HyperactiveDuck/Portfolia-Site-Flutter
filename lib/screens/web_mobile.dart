import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:fwebportfolio/widgetsMobile/navbarmobile.dart';
import 'dart:html' as html;
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/widgetsMobile/intro_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/about_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/skills_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/expereince_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/project_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/certs_mobile.dart';
import 'package:fwebportfolio/widgetsMobile/contact_mobile.dart';
import 'package:flutter/rendering.dart';

class WebMobile extends StatefulWidget {
  const WebMobile({super.key});

  @override
  State<WebMobile> createState() => _WebMobileState();
}

class _WebMobileState extends State<WebMobile> {
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();
  var key5 = GlobalKey();
  var key6 = GlobalKey();
  var key7 = GlobalKey();
  ScrollController _scrollController = ScrollController();

  void scrollTo(GlobalKey key) {
    final RenderBox renderObject =
        key.currentContext!.findRenderObject()! as RenderBox;
    final RenderAbstractViewport? viewport =
        RenderAbstractViewport.of(renderObject);

    if (viewport != null) {
      final double offset =
          viewport.getOffsetToReveal(renderObject, 0.0).offset;
      _scrollController.animateTo(offset,
          duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    }
  }

  toggleDrawer() async {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
  }

  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    double devHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        key: _scaffoldKey,
        endDrawer: Drawer(
          backgroundColor: kBlack,
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'Yücel Arda DEMİRCİ',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text(
                  'About',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key1);
                  toggleDrawer();
                },
              ),
              ListTile(
                title: const Text(
                  'Skills',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key2);
                  toggleDrawer();
                },
              ),
              ListTile(
                title: const Text(
                  'Experience',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key3);
                  toggleDrawer();
                },
              ),
              ListTile(
                title: const Text(
                  'Projects',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key4);
                  toggleDrawer();
                },
              ),
              ListTile(
                title: const Text(
                  'Certificates',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key5);
                  toggleDrawer();
                },
              ),
              ListTile(
                title: const Text(
                  'Contact',
                  textAlign: TextAlign.end,
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  scrollTo(key6);
                  toggleDrawer();
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(height: devHeight * 0.005),
              NavBarMobile(
                devWidth: devWidth,
                devHeight: devHeight,
                key: key7,
              ),
              IntroMobile(
                devWidth: devWidth,
                devHeight: devHeight,
              ),
              AboutMobile(
                devWidth: devWidth,
                devHeight: devHeight,
                key: key1,
              ),
              SkillsMobile(
                devHeight: devHeight,
                devWidth: devWidth,
                key: key2,
              ),
              ExperienceMobile(
                devHeight: devHeight,
                devWidth: devWidth,
                key: key3,
              ),
              ProjectsMobile(
                devHeight: devHeight,
                devWidth: devWidth,
                key: key4,
              ),
              CertsMobile(
                devHeight: devHeight,
                devWidth: devWidth,
                key: key5,
              ),
              ContactMobile(
                devHeight: devHeight,
                devWidth: devWidth,
                key: key6,
              ),
              Container(
                color: Secondery,
                height: devHeight * 0.06,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    children: [
                      const Text(
                        '© 2023 Yücel Arda DEMİRCİ',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          html.window.open(
                              'https://github.com/HyperactiveDuck/Portfolio-Site-Flutter',
                              'new tab');
                        },
                        child: const Text(
                          'github',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          scrollTo(key7);
                        },
                        child: Text(
                          'Scroll to top',
                          style: TextStyle(color: kAccent),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

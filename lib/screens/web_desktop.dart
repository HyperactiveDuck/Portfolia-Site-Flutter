import 'package:flutter/rendering.dart';
import 'package:fwebportfolio/widgets/experience.dart';
import 'package:fwebportfolio/widgets/hover_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:fwebportfolio/widgets/cert.dart';
import 'package:fwebportfolio/widgets/projects.dart';
import 'package:fwebportfolio/widgets/connect.dart';
import 'package:fwebportfolio/widgets/intro.dart';
import 'package:fwebportfolio/widgets/about.dart';
import 'package:fwebportfolio/widgets/skills.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class DesktopWeb extends StatefulWidget {
  const DesktopWeb({super.key});

  @override
  State<DesktopWeb> createState() => DesktopWebState();
}

class DesktopWebState extends State<DesktopWeb> {
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  var key1 = GlobalKey();
  var key2 = GlobalKey();
  var key3 = GlobalKey();
  var key4 = GlobalKey();
  var key5 = GlobalKey();
  var key6 = GlobalKey();
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

  @override
  Widget build(BuildContext context) {
    double devWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBlack, // background color
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight + 20),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Secondery,
                      ),
                      alignment: Alignment.center,
                      width: devWidth * 0.78,
                      height: kToolbarHeight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 50, 0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage('assets/yad.jpg'),
                              radius: 20,
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              scrollTo(key1);
                            },
                            child: const HoverTextWidget(
                              text: 'About',
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              scrollTo(key2);
                            },
                            child: const HoverTextWidget(
                              text: 'Skills',
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              scrollTo(key3);
                            },
                            child: const HoverTextWidget(
                              text: 'Experience',
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              scrollTo(key4);
                            },
                            child: const HoverTextWidget(
                              text: 'Projects',
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              scrollTo(key5);
                            },
                            child: const HoverTextWidget(
                              text: 'Contact',
                            ),
                          ),
                          const Spacer(),
                          TextButton(
                            onPressed: () {
                              html.window.open(
                                  'https://github.com/HyperactiveDuck',
                                  'new tab');
                            },
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(kAccent),
                            ),
                            child: const Image(
                              image: AssetImage('assets/github_white.png'),
                              width: 20,
                            ),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(kAccent),
                            ),
                            onPressed: () {
                              html.window.open(
                                  'https://www.linkedin.com/in/yadhere',
                                  'new tab');
                            },
                            child: const Image(
                              image: AssetImage('assets/linkedin_white.png'),
                              width: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Intro(
                devWidth: devWidth,
                key: key6,
              ),
              About(
                devWidth: devWidth,
                key: key1,
              ),
              Skills(
                devWidth: devWidth,
                key: key2,
              ),
              Experience(
                devWidth: devWidth,
                key: key3,
              ),
              Projects(
                devWidth: devWidth,
                key: key4,
              ),
              Certificate(devWidth: devWidth),
              Connect(
                devWidth: devWidth,
                key: key5,
              ),
              Container(
                color: Secondery,
                width: devWidth,
                height: 50,
                child: Row(
                  children: [
                    SizedBox(
                      width: devWidth * 0.1,
                    ),
                    Text(
                      '© 2023 Yücel Arda DEMİRCİ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: GoogleFonts.oswald().fontFamily),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        html.window.open(
                            'https://github.com/HyperactiveDuck/Portfolio-Site-Flutter',
                            'new tab');
                      },
                      child: const Text(
                        'github',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        scrollTo(key6);
                      },
                      child: Text(
                        'Scroll to top',
                        style: TextStyle(color: kAccent),
                      ),
                    ),
                    SizedBox(
                      width: devWidth * 0.1,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:fwebportfolio/widgets/hover_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:fwebportfolio/widgets/intro.dart';
import 'package:fwebportfolio/widgets/about.dart';
import 'package:fwebportfolio/widgets/skills.dart';

class DesktopWeb extends StatefulWidget {
  DesktopWeb({super.key});

  @override
  State<DesktopWeb> createState() => _DesktopWebState();
}

class _DesktopWebState extends State<DesktopWeb> {
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: kBlack, // background color
          appBar: MyAppBar(),
          body: ListView(
            children: [
              Intro(devWidth: devWidth),
              About(devWidth: devWidth),
              Skills(devWidth: devWidth),
              Container(
                height: 800,
                color: kBlack,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(200, 0, 00, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 50, 0, 0),
                        child: Column(
                          children: [
                            SelectableText(
                              'My Experiences',
                              style: TextStyle(
                                  color: kAccent,
                                  fontFamily: GoogleFonts.oswald().fontFamily,
                                  fontSize: devWidth * 0.03,
                                  fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            Container(
                              width: devWidth * 0.2,
                              child: Image(
                                image: AssetImage('assets/balogobeyaz.jpg'),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SelectableText(
                              'Bilişim Academy',
                              style: TextStyle(
                                color: Colors.grey,
                                fontFamily: GoogleFonts.roboto().fontFamily,
                                fontSize: devWidth * 0.03,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SelectableText(
                              'IT Intern',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: devWidth * 0.01),
                            ),
                            SelectableText(
                              kExp,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 40);
  MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    double devHeight = MediaQuery.of(context).size.height;
    double devWidth = MediaQuery.of(context).size.width;
    return Align(
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
                const HoverTextWidget(text: 'About'),
                const Spacer(),
                const HoverTextWidget(text: 'Skills'),
                const Spacer(),
                const HoverTextWidget(text: 'Projects'),
                const Spacer(),
                const HoverTextWidget(text: 'Experience'),
                const Spacer(),
                const HoverTextWidget(text: 'Contact'),
                const Spacer(),
                Stack(
                  children: [
                    const Positioned(
                      left: 18,
                      top: 9,
                      child: Image(
                        image: AssetImage('assets/github_white.png'),
                        width: 20,
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _isHovering ? 0.7 : 0.0,
                      child: TextButton(
                        onHover: (isHovering) =>
                            setState(() => _isHovering = isHovering),
                        onPressed: () {
                          print('test');
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(40, 40)),
                          overlayColor: MaterialStateProperty.all(kAccent),
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                        ),
                        child: const Text(''),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    const Positioned(
                      left: 18,
                      top: 9,
                      child: Image(
                        image: AssetImage('assets/linkedin_white.png'),
                        width: 20,
                      ),
                    ),
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 500),
                      opacity: _isHovering ? 0.7 : 0.0,
                      child: TextButton(
                        onHover: (isHovering) =>
                            setState(() => _isHovering = isHovering),
                        onPressed: () {
                          print('test');
                        },
                        style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(const Size(40, 40)),
                          overlayColor: MaterialStateProperty.all(kAccent),
                          shape:
                              MaterialStateProperty.all(const CircleBorder()),
                        ),
                        child: const Text(''),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ///width doesnt matter
  @override
  Size get preferredSize => const Size(200, kToolbarHeight + 30);
}

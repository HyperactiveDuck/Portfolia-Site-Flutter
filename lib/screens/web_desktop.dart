import 'package:fwebportfolio/hover_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

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
              Container(
                color: kBlack,
                height: 800,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                      child: Container(
                        child: Image(
                          image: AssetImage('assets/YAD_BIG.jpg'),
                          alignment: Alignment.centerRight,
                          fit: BoxFit.cover,
                        ),
                        width: devWidth > 1200 ? 400 : devWidth * 0.5,
                        height: 600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 50, 0),
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SelectableText(
                                'Who is Yücel Arda DEMİRCİ',
                                style: TextStyle(
                                    fontFamily: GoogleFonts.oswald().fontFamily,
                                    fontSize: devWidth > 1200 ? 50 : 30,
                                    color: kAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                              SelectableText(
                                'A Bit About Me',
                                style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.lilitaOne().fontFamily,
                                    fontSize: devWidth > 1200 ? 35 : 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                              SelectableText(''),
                              SelectableText(
                                kAbout,
                                style: TextStyle(
                                    fontFamily:
                                        GoogleFonts.rowdies().fontFamily,
                                    fontSize: devWidth > 1200 ? 20 : 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                        width: devWidth > 1200 ? 600 : devWidth * 0.5,
                        height: 600,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class Intro extends StatelessWidget {
  const Intro({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Secondery,
      height: 800,
      width: devWidth * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                width: devWidth * 0.5,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 200,
                          ),
                          SelectableText(
                            'HELLO WOLRD! I AM',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                color: kAccent,
                                fontSize: devWidth * 0.011,
                                fontWeight: FontWeight.w900),
                            textAlign: TextAlign.left,
                          ),
                          SelectableText(
                            'Yücel Arda DEMIRCI',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                fontSize: devWidth * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.w900),
                          ),
                          SelectableText(
                            'Your Local Developer',
                            style: TextStyle(
                                fontFamily: GoogleFonts.oswald().fontFamily,
                                fontSize: devWidth * 0.01,
                                color: Colors.white54),
                          ),
                          SelectableText(
                            'MIS Student',
                            style: TextStyle(
                                fontSize: devWidth * 0.01,
                                color: Colors.white54),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedButton(
                                borderWidth: 4,
                                selectedBackgroundColor: kAccent,
                                borderColor: kAccent,
                                backgroundColor: Colors.transparent,
                                animatedOn: AnimatedOn.onHover,
                                onPress: () {
                                  print('test');
                                },
                                width: 200,
                                text: 'Contact Me!',
                                selectedTextColor: Colors.black,
                                transitionType:
                                    TransitionType.LEFT_BOTTOM_ROUNDER,
                                textStyle: TextStyle(
                                    fontFamily: GoogleFonts.oswald().fontFamily,
                                    fontSize: devWidth * 0.01,
                                    letterSpacing: 5,
                                    color: kAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              AnimatedButton(
                                borderWidth: 4,
                                selectedBackgroundColor: Colors.white,
                                backgroundColor: Colors.transparent,
                                animatedOn: AnimatedOn.onHover,
                                onPress: () {
                                  print('test');
                                },
                                width: 200,
                                text: 'Download CV',
                                selectedTextColor: Colors.black,
                                transitionType: TransitionType.CENTER_LR_IN,
                                textStyle: TextStyle(
                                    fontFamily: GoogleFonts.oswald().fontFamily,
                                    fontSize: devWidth * 0.01,
                                    letterSpacing: 5,
                                    color: kAccent,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              child: Image(
                image: AssetImage('assets/dev.png'),
                alignment: Alignment.topLeft,
              ),
              height: 700,
              width: devWidth * 0.5,
            )
          ],
        ),
      ),
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

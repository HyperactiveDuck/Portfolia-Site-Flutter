import 'package:fwebportfolio/hover_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';

class DesktopWeb extends StatefulWidget {
  const DesktopWeb({super.key});

  @override
  State<DesktopWeb> createState() => _DesktopWebState();
}

class _DesktopWebState extends State<DesktopWeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: kBlack, // background color
        appBar: MyAppBar(),
        body: const Center(
          child: HoverTextWidget(
            text: 'Hover me!',
          ),
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
                const HoverTextWidget(text: 'Skills'),
                const HoverTextWidget(text: 'Projects'),
                const HoverTextWidget(text: 'Experience'),
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

// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:html' as html;

class Projects extends StatelessWidget {
  const Projects({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Secondery,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: devWidth * 0.1, vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Projects',
              style: TextStyle(
                  color: kAccent,
                  fontFamily: GoogleFonts.oswald().fontFamily,
                  fontSize: devWidth * 0.03,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://github.com/HyperactiveDuck/uafw', 'new tab');
                    },
                    child: ProjectCardUAFW(
                      devWidth: devWidth,
                      projectText: 'UAFW',
                      projectImage: const Image(
                        image: AssetImage('assets/UAFW_1.png'),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://github.com/HyperactiveDuck/YAD_To_Do_Flutter',
                          'new tab');
                    },
                    child: ProjectCard(
                      devWidth: devWidth,
                      projectText: 'To Do App',
                      projectImage: const Image(
                        image: AssetImage('assets/yadtodo_3.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://github.com/HyperactiveDuck/Group_Chat_Flutter',
                          'new tab');
                    },
                    child: ProjectCard(
                      devWidth: devWidth,
                      projectText: 'Group Chat',
                      projectImage: const Image(
                        image: AssetImage('assets/gc1.png'),
                      ),
                    ),
                  ),
                ),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      html.window.open(
                          'https://github.com/HyperactiveDuck/klima_flutter_app',
                          'new tab');
                    },
                    child: ProjectCard(
                      devWidth: devWidth,
                      projectText: 'Klima',
                      projectImage: const Image(
                        image: AssetImage('assets/klima1.png'),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.devWidth,
    required this.projectText,
    required this.projectImage,
  });

  final double devWidth;
  final String projectText;
  final Image projectImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(projectText,
            style: TextStyle(
                color: Colors.white,
                fontFamily: GoogleFonts.oswald().fontFamily,
                fontSize: devWidth * 0.03,
                fontWeight: FontWeight.w900)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: devWidth * 0.2,
            child: Image(
              image: projectImage.image,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectCardUAFW extends StatelessWidget {
  const ProjectCardUAFW({
    super.key,
    required this.devWidth,
    required this.projectText,
    required this.projectImage,
  });

  final double devWidth;
  final String projectText;
  final Image projectImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SelectableText(
          projectText,
          style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.oswald().fontFamily,
              fontSize: devWidth * 0.03,
              fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 160,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: devWidth * 0.2,
            child: Image(
              image: projectImage.image,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: devWidth * 0.2,
            child: const Image(
              image: AssetImage('assets/UAFW_2.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: devWidth * 0.2,
            child: const Image(
              image: AssetImage('assets/UAFW_3.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}

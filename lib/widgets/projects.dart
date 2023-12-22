import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCardUAFW(
                  devWidth: devWidth,
                  projectText: 'UAFW',
                  projectImage: Image(
                    image: AssetImage('assets/UAFW_1.png'),
                  ),
                ),
                ProjectCard(
                  devWidth: devWidth,
                  projectText: 'To Do App',
                  projectImage: Image(
                    image: AssetImage('assets/yadtodo_3.png'),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProjectCard(
                  devWidth: devWidth,
                  projectText: 'Group Chat',
                  projectImage: Image(
                    image: AssetImage('assets/gc1.png'),
                  ),
                ),
                ProjectCard(
                  devWidth: devWidth,
                  projectText: 'Klima',
                  projectImage: Image(
                    image: AssetImage('assets/klima1.png'),
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
        SizedBox(
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
            child: Image(
              image: AssetImage('assets/UAFW_2.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: devWidth * 0.2,
            child: Image(
              image: AssetImage('assets/UAFW_3.png'),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}

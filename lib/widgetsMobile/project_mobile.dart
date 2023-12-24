import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/consts.dart';
import 'dart:html' as html;

class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({
    super.key,
    required this.devHeight,
    required this.devWidth,
  });

  final double devHeight;
  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: devHeight * 4,
      width: devWidth,
      color: kBlack,
      child: Column(
        children: [
          SizedBox(
            height: devHeight * 0.1,
          ),
          Text(
            'My Projects',
            style: TextStyle(
              color: kAccent,
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: GoogleFonts.oswald().fontFamily,
            ),
          ),
          GestureDetector(
            child: UAFWProjectCard(devHeight: devHeight),
            onTap: () {
              html.window
                  .open('https://github.com/HyperactiveDuck/uafw', 'new tab');
            },
          ),
          SizedBox(
            height: devHeight * 0.1,
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://github.com/HyperactiveDuck/YAD_To_Do_Flutter',
                  'new tab');
            },
            child: ProjectCard(
              devHeight: devHeight,
              projectName: 'Yad To Do',
              projectImage: Image(image: AssetImage('assets/yadtodo_3.png')),
            ),
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://github.com/HyperactiveDuck/Group_Chat_Flutter',
                  'new tab');
            },
            child: ProjectCard(
              devHeight: devHeight,
              projectName: 'Group Chat',
              projectImage: Image(
                image: AssetImage('assets/gc1.png'),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              html.window.open(
                  'https://github.com/HyperactiveDuck/klima_flutter_app',
                  'new tab');
            },
            child: ProjectCard(
              devHeight: devHeight,
              projectName: 'Klima',
              projectImage: Image(
                image: AssetImage('assets/klima1.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.devHeight,
    required this.projectName,
    required this.projectImage,
  });

  final double devHeight;
  final String projectName;
  final Image projectImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: devHeight * 0.1,
          ),
          Text(
            projectName,
            style: GoogleFonts.oswald(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Image(
            image: projectImage.image,
          ),
        ],
      ),
    );
  }
}

class UAFWProjectCard extends StatelessWidget {
  const UAFWProjectCard({
    super.key,
    required this.devHeight,
  });

  final double devHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: devHeight * 0.1,
          ),
          Text(
            ' UAFW',
            style: GoogleFonts.oswald(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
              image: AssetImage('assets/UAFW_1.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
            child: Image(
              image: AssetImage('assets/UAFW_2.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: Image(
              image: AssetImage('assets/UAFW_3.png'),
            ),
          ),
        ],
      ),
    );
  }
}

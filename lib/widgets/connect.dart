import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fwebportfolio/widgets/hover_text_widget.dart';
import 'dart:html' as html;

class Connect extends StatelessWidget {
  const Connect({
    super.key,
    required this.devWidth,
  });

  final double devWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: devWidth,
      height: 600,
      color: kBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(devWidth * 0.1, 0, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      "Would you like to connect?",
                      style: TextStyle(
                        color: kAccent,
                        fontSize: 30,
                        fontFamily: GoogleFonts.anton().fontFamily,
                      ),
                    ),
                    Text(
                      'Lets Work Together!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontFamily: GoogleFonts.anton().fontFamily,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: devWidth * 0.4,
                      ),
                      child: Text(
                        kConnect,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 20,
                          fontFamily: GoogleFonts.roboto().fontFamily,
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        html.window.open(
                            'mailto:demirciyucelarda@gmail.com', 'new tab');
                      },
                      child: const HoverTextWidget(text: 'GET IN TOUCH →'),
                    ),
                    SelectableText(
                      '(or copy) demirciyucelarda@gmail.com',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 10,
                        fontFamily: GoogleFonts.roboto().fontFamily,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

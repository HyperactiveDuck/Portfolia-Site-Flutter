import 'package:flutter/material.dart';
import 'package:fwebportfolio/consts.dart';
import 'package:google_fonts/google_fonts.dart';

class HoverTextWidget extends StatefulWidget {
  final String text;

  const HoverTextWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _HoverTextWidgetState createState() => _HoverTextWidgetState();
}

class _HoverTextWidgetState extends State<HoverTextWidget> {
  bool _isHovered = false;
  double _lineWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _isHovered = true;
        _lineWidth = _calculateLineWidth();
      }),
      onExit: (_) => setState(() {
        _isHovered = false;
        _lineWidth = 0.0;
      }),
      child: Stack(
        children: [
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 400),
            style: TextStyle(
              color: _isHovered ? Colors.teal : Colors.white,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
            child: Text(
              widget.text,
              style: TextStyle(
                fontFamily: GoogleFonts.saira().fontFamily,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              height: 3,
              width: _lineWidth,
              color: _isHovered ? kAccent : Colors.transparent,
              curve: Curves.easeInOut,
            ),
          ),
        ],
      ),
    );
  }

  double _calculateLineWidth() {
    final textPainter = TextPainter(
      text: TextSpan(
        text: widget.text,
        style: const TextStyle(
          color: Colors.transparent,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    return textPainter.width;
  }
}

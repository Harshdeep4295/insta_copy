import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayText extends Text {
  DisplayText({
    required String data,
    double fontSize = 18,
    FontWeight fontWeight = FontWeight.w500,
    Color color = Colors.black,
  }) : super(
          data,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: fontWeight,
            fontFamily: GoogleFonts.didactGothic().fontFamily,
            color: color,
          ),
        );
}

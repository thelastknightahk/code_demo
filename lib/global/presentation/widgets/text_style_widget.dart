import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleWidget extends StatelessWidget {
  Color? textColor;
  FontWeight? fontWeight;
  double? fontSize;
  String? content;
  TextStyleWidget({
    Key? key,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      content!,
      style: GoogleFonts.roboto(
          fontSize: fontSize, fontWeight: fontWeight, color: textColor),
    );
  }
}

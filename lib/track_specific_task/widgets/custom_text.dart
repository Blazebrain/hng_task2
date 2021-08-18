import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/constants.dart';

class CustomText extends StatelessWidget {
  final String? text;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  final int? maxLines;
  final TextAlign? textAlign;
  final height;

  const CustomText(
    this.text, {
    Key? key,
    this.color,
    this.weight,
    this.size,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.height,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: true,
      overflow: maxLines != null ? TextOverflow.ellipsis : null,
      style: GoogleFonts.mulish(
        height: height,
        fontSize: size ?? 16,
        fontWeight: weight ?? FontWeight.w400,
        color: color ?? themeTextBodyColor,
      ),
    );
  }
}

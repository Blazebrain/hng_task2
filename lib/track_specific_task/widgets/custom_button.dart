import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utilities/constants.dart';

class CustomButton extends StatelessWidget {
  final Function() onPressed;
  final String label;
  final MainAxisAlignment alignment;
  final IconData iconData;
  final Color fillColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.label,
    required this.iconData,
    this.alignment = MainAxisAlignment.center,
    this.fillColor = backgroundWhite,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
      disabledElevation: 0,
      fillColor: fillColor.withOpacity(0.4),
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: MediaQuery.of(context).size.width.clamp(240.0, 560.0),
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        side: BorderSide.none,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: Row(
        mainAxisAlignment: alignment,
        children: [
          FittedBox(
            child: Text(
              '$label',
              style: GoogleFonts.mulish(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: textWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

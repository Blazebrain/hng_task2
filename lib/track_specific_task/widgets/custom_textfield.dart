import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import 'custom_text.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final controller;
  final validator;
  const CustomTextField({Key? key, this.label, this.controller, this.validator})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          constraints: BoxConstraints.tightFor(
            height: 56,
            width: MediaQuery.of(context).size.width.clamp(240.0, 560.0),
          ),
          decoration: BoxDecoration(
            color: lightBlueTextfieldColor.withOpacity(0.7),
            // backgroundWhite.withOpacity(0.6),
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          child: TextFormField(
            controller: controller,
            decoration: inputFieldDecoration.copyWith(
              hintText: label,
              border: InputBorder.none,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            validator: validator ?? null,
            textCapitalization: TextCapitalization.words,
            style: inputTextStyle,
          ),

          //  TextField(
          //   decoration: InputDecoration(
          //     hintText: label,

          //   ),
          // ),
        ),
        DividerTheme(
          data: const DividerThemeData(
            color: Color(0xFF73706D),
            thickness: 1.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: Divider(
                  endIndent: 12,
                  indent: 12,
                ),
              ),
              const CustomText(
                '++',
                color: Color(0xFF767370),
                size: 14,
              ),
              const Expanded(
                child: Divider(
                  indent: 12,
                  endIndent: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

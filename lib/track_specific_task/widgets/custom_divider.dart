import 'package:flutter/material.dart';
import '../utilities/constants.dart';

import 'custom_text.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DividerTheme(
      data: const DividerThemeData(
        color: registerButtonColor,
        thickness: 5.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Expanded(
            child: Divider(
              endIndent: 12,
              // indent: 12,
            ),
          ),
          const CustomText(
            '++',
            color: registerButtonColor,
            size: 14,
          ),
          const Expanded(
            child: Divider(
              indent: 12,
              // endIndent: 12,
            ),
          ),
        ],
      ),
    );
  }
}

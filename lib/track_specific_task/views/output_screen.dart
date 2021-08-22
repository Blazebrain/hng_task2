import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hng_stage_2/track_specific_task/widgets/custom_divider.dart';

import '../utilities/constants.dart';
import '../view_models/output_screen_model.dart';
import '../widgets/custom_text.dart';

class OutputScreen extends StatelessWidget {
  String firstName;
  String lastName;
  String emailAddress;
  String phoneNumber;
  OutputScreen({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.phoneNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/sea.jpg'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            foregroundDecoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black54, Colors.black87],
                stops: [0.18, 0.48, 1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                CustomText(
                  'Hi $firstName,',
                  size: 32,
                  color: textWhite,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 4),
                const CustomText(
                  'Congratulations on your successful enrollment.',
                  size: 20,
                  color: textWhite,
                  weight: FontWeight.bold,
                ),
                const SizedBox(height: 16),
                const CustomText(
                  'Here are your registration details.',
                  size: 18,
                  color: textWhite,
                  weight: FontWeight.w600,
                ),
                const SizedBox(height: 16),
                const CustomDivider(),
                const SizedBox(height: 8),
                CustomText(
                  'First Name: $firstName.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                CustomText(
                  'Last Name: $lastName.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                CustomText(
                  'Email address: $emailAddress.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                CustomText(
                  'Phone Number: $phoneNumber.',
                  size: 16,
                  color: textWhite,
                  weight: FontWeight.w500,
                ),
                const SizedBox(height: 8),
                const CustomDivider(),
                const SizedBox(height: 16),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: 'Need further clarifications? ',
                      style: GoogleFonts.mulish(
                        fontSize: 15,
                        color: textWhite,
                      ),
                      children: [
                        TextSpan(
                          text: 'Click here',
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: themePrimaryColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              OutputScreenModel().launchUrl();
                            },
                        )
                      ],
                    ),
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

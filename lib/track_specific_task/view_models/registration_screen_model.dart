import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/output_screen.dart';

class RegScreenViewModel {
  final GlobalKey<FormState> formKey = GlobalKey();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();

// This function handles the passage of data.
// It can be used to store the data and perform other needed opeations.
// For now, it's acting as a passage for the user input.
  void saveUserData(context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OutputScreen(
          firstName: firstNameController.text,
          lastName: lastNameController.text,
          emailAddress: emailAddressController.text,
          phoneNumber: phoneNumberController.text,
        ),
      ),
    );
  }
}

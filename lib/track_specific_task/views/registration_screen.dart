import 'package:flutter/material.dart';

import '../utilities/constants.dart';
import '../utilities/validators.dart';
import '../view_models/registration_screen_model.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';
import '../widgets/custom_textfield.dart';

class RegistrationScreen extends StatelessWidget {
  RegistrationScreen({Key? key}) : super(key: key);
  RegScreenViewModel model = RegScreenViewModel();

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
                stops: [0.10, 0.48, 1],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 24, 16, 32),
            child: SingleChildScrollView(
              reverse: true,
              child: Form(
                key: model.formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      'Register',
                      size: 32,
                      color: textWhite,
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(height: 4),
                    const CustomText(
                      'Fill the form below to register for HNGi8',
                      size: 16,
                      color: textWhite,
                      weight: FontWeight.bold,
                    ),
                    const SizedBox(height: 16),
                    CustomTextField(
                      label: 'First Name',
                      controller: model.firstNameController,
                      validator: Validator.validate.notEmptyField,
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      label: 'Last Name',
                      controller: model.lastNameController,
                      validator: Validator.validate.notEmptyField,
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      label: 'Email Address',
                      controller: model.emailAddressController,
                      validator: Validator.validate.emailField,
                    ),
                    const SizedBox(height: 4),
                    CustomTextField(
                      label: 'Phone Number',
                      controller: model.phoneNumberController,
                    ),
                    const SizedBox(height: 16),
                    CustomButton(
                      fillColor: registerButtonColor,
                      onPressed: () {
                        if (model.formKey.currentState?.validate() ?? false) {
                          model.saveUserData(context);
                        }
                      },
                      label: 'Track specific task',
                      iconData: Icons.message,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

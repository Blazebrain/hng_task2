import 'string_extensions.dart';

class Validator {
  Validator._();
  static Validator validate = Validator._();

  // This function checks or ensures the text form
  // fields are not submitted empty.
  String? notEmptyField(String? input, [String? error]) {
    if (input == null || input.isEmpty)
      return error == null ? 'This field cannot be empty' : '$error';
    else
      return null;
  }

  // To validate the phone number passed in by the user.
  // It can still be improved on to include more criteria
  String? phoneField(String? input, [String? error]) {
    if (input == null || input.isEmpty)
      return error == null ? 'This field cannot be empty' : '$error';
    else
      return null;
  }

  // To validate the email passed in by the user.
  // It can still be improved on to include more criteria
  String? emailField(String? input) {
    if (input != null && input.validateEmail())
      return null;
    else if (input?.isEmpty ?? true)
      return 'Enter your email';
    else
      return 'Enter a valid email address';
  }
}

import 'package:intl/intl.dart';

extension StringExtension on String {
  /// To validate a user email using regex
  bool validateEmail() {
    const emailPattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    final regExp = RegExp(emailPattern);

    return regExp.hasMatch(trim());
  }
}

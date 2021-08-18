import 'package:url_launcher/url_launcher.dart';

class OutputScreenModel {
  // This function launces the link to the Zuri website.
  // It makes use of the url_launcher package.

  launchUrl() async {
    const url = 'https://internship.zuri.team/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Cant launch $url';
    }
  }
}

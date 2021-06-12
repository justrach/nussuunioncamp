import 'package:url_launcher/url_launcher.dart';




class launchURL{
  String url;
  launchURL({required this.url});
  void _launchURL() async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  // static const _url = '+65 99493149';
}
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UrlTools {
  static Future<void> goToUrl(String url) async {
    await canLaunchUrlString(url)
        ? await launchUrlString(url, mode: LaunchMode.inAppWebView)
        : throw 'Could not launch $url';
  }

  static Future<void> mailTo(String email, String subject) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
          .join('&');
    }

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
      query: encodeQueryParameters(<String, String>{
        'subject': subject,
      }),
    );

    await launchUrl(emailLaunchUri);
  }

  static Future<void> callTo(String phone) async {
    final Uri phoneLaunchUri = Uri(
      scheme: 'tel',
      path: phone,
    );

    await launchUrl(phoneLaunchUri);
  }

  static Future<void> openFile(String urlFile) async {
    await canLaunchUrlString(urlFile)
        ? await launchUrlString(urlFile, mode: LaunchMode.externalApplication)
        : throw 'Could not open the file';
  }
}

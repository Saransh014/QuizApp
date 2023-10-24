// import 'package:flitm/dev_config.dart';
// import 'package:flitm/utils/shared_pref.dart';
import 'package:logger/logger.dart';
import 'package:url_launcher/url_launcher.dart';

// Logger logger = Logger(level: DevConfig.logLevel);

class Utils {
  static final appName = "Flitm: be curious";
  static final playStoreLink =
      "https://play.google.com/store/apps/details?id=com.caesiumstudio.flitm";
  static final appStoreLink =
      "https://apps.apple.com/us/app/flitm-be-curious/id6452400407";

  static final aboutUsLink = "https://www.caesiumstudio.com";
  static final privacyPolicyLink = "https://www.caesiumstudio.com/privacy-policy";

  // static SharedPref sharedPref = SharedPref();

  static String enumToString(dynamic enumValue) {
    return enumValue.toString().split('.')[1];
  }

  static Future<void> openPrivacyPolicy() async {
    https://ssdevs.blogspot.com/2023/10/privacy-policy.html
    final Uri url = Uri(scheme: 'https', host: 'ssdevs.blogspot.com', path: '2023/10/privacy-policy.html');
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }
  // static Future<Null> launchInBrowser(String url) async {
  //  if (await canLaunchUrl(url)) {
  //    await launch(url, forceSafariVC: false, forceWebView: false);
  //   } else {
  //     print("Failed launching url: " + url);
  //   }
  // }

  static Future<Null> sendEmail(
      String email, String subject, String body) async {
    await launch('mailto:' + email + '?subject=' + subject + '&body=' + body);
  }

  static Future<Null> launchInWebViewOrVC(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    }
  }
}

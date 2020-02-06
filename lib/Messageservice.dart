import 'package:url_launcher/url_launcher.dart';

class TelAndSmsService {
  void sendSms(String number) => launch("sms:$number");
  void sendEmail(String email) => launch("mailto:$email");
}

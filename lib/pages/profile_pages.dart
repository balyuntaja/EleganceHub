import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  final String linkedInUrl = "https://www.linkedin.com/in/balyuntaja";
  final String telegramUrl = "https://t.me/balyuntaja";
  final String email = "balyuntaja28@gmail.com";

  Future<void> _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: GoogleFonts.dmSans(
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images\/user_avatar.jpeg'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Mohammad Baliyun Taja',
              style: GoogleFonts.dmSans(
                textStyle: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            ContactItem(
              icon: Icons.account_box,
              contactText: 'LinkedIn: balyuntaja',
              onTap: () => _launchUrl(linkedInUrl),
            ),
            SizedBox(height: 10),
            ContactItem(
              icon: Icons.telegram,
              contactText: 'Telegram: @balyuntaja',
              onTap: () => _launchUrl(telegramUrl),
            ),
            SizedBox(height: 10),
            ContactItem(
              icon: Icons.email,
              contactText: 'Gmail: balyuntaja28@gmail.com',
              onTap: () => _launchUrl('mailto:$email'),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactItem extends StatelessWidget {
  final IconData icon;
  final String contactText;
  final Function onTap;

  ContactItem({
    required this.icon,
    required this.contactText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              contactText,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_web/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMediaIconColumn extends StatelessWidget {
  const SocialMediaIconColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaIcon(
          icon: 'assets/icons/linkedin.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://linkedin.com/in/abdullah-abbacy')),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/github.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://github.com/ABDULLAHABBASI707')),
        ),
        SocialMediaIcon(
          icon: 'assets/icons/dribble.svg',
          onTap: () =>
              launchUrl(Uri.parse('https://abdullahabbasi.portfolial.com/')),
        ),
        const SocialMediaIcon(icon: 'assets/icons/twitter.svg'),
      ],
    );
  }
}

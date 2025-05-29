import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GithubUrlLaunchButton extends StatelessWidget {
  const GithubUrlLaunchButton({super.key, required this.uri});
  final String uri;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final url = Uri.parse(uri);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw "url couldn't launch";
        }
      },
      icon: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(shape: BoxShape.circle),
        child: Image.asset("image/github.png", color: Colors.grey),
      ),
    );
  }
}

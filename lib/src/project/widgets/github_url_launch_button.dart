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
        child: Image.network(
          "https://c9yois02lm.ufs.sh/f/RXJBrPvyVfAxI6OzvDqquKPZzXNU5coSTvQRwxyFYW1OAIDs",
          color: Colors.grey,
          loadingBuilder: (context, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return Center(child: CircularProgressIndicator());
          },
          errorBuilder: (context, error, stackTrace) {
            return Icon(Icons.error);
          },
        ),
      ),
    );
  }
}

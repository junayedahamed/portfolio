import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileUrlLauncherButton extends StatelessWidget {
  const ProfileUrlLauncherButton({super.key, required this.uri});
  final String uri;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final url = Uri.parse(uri);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw "url couldn't launch";
        }
      },
      child: Row(
        children: [
          Text(
            "Visit Profile",
            style: TextStyle(
              fontSize: 15,
              color: Colors.deepPurpleAccent[400],
              decoration: TextDecoration.combine([TextDecoration.underline]),
            ),
          ),
          Container(
            decoration: BoxDecoration(shape: BoxShape.circle),
            child: Image.network(
              "https://c9yois02lm.ufs.sh/f/RXJBrPvyVfAxhZ3eEyds7l640u8LewKFxMHAZdP9oBSraGWp",
              height: 15,
              width: 15,
              color: Colors.deepPurpleAccent[400],
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(child: CircularProgressIndicator());
              },
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error, size: 15);
              },
            ),
          ),
        ],
      ),
    );
  }
}

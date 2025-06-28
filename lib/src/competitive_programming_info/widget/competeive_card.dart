import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/src/competitive_programming_info/widget/profile_url_launcher_button.dart';

class CompeteiveCard extends StatelessWidget {
  const CompeteiveCard({
    super.key,
    required this.image,
    required this.platformplatformName,
    required this.url,
    this.ratting,
    required this.solved,
  });
  final String image;
  final String platformplatformName;
  final String url, solved;
  final String? ratting;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 150,
          width: 170,
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  image,

                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error);
                  },
                  fit: BoxFit.fitWidth,
                  scale: 1.0,
                ),
                SizedBox(height: 10),
                Text(
                  platformplatformName,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.lightGreenAccent,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Over $solved Problem solved ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      ratting != null ? "With $ratting ratting" : "",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),

                    ProfileUrlLauncherButton(uri: url),
                  ],
                ),
              ],
            ),
          ),
        )
        .animate(delay: Duration(milliseconds: 150 * 3))
        .slideY(begin: 0.5, end: 0, delay: Duration(milliseconds: 300))
        .fadeIn();
  }
}

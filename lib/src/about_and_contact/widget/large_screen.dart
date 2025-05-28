import 'package:flutter/material.dart';
import 'package:portfolio/src/about_and_contact/about_data/about_data.dart';
import 'package:portfolio/src/about_and_contact/widget/about_card.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeScreenAbout extends StatelessWidget {
  const LargeScreenAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //about card one
          AboutCard(
            image: AboutData.image,
            widget: Column(
              spacing: 30,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AboutData.myname,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
                Text(
                  textAlign: TextAlign.center,
                  AboutData.aboutDescription,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
          //about card two
          AboutCard(
            image: AboutData.conimage,
            widget: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Contact".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "Social".toUpperCase(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () async {
                        final Uri emailUri = Uri(
                          scheme: 'mailto',
                          path: AboutData.email,
                        );

                        if (await canLaunchUrl(emailUri)) {
                          await launchUrl(emailUri);
                        } else {
                          throw 'Could not launch email client';
                        }
                      },
                      child: Text(
                        "Email",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                    TextButton(
                      onPressed: () async {
                        final Uri giturl = Uri.parse(AboutData.github);

                        if (await canLaunchUrl(giturl)) {
                          await launchUrl(giturl);
                        } else {
                          throw 'Could not launch email client';
                        }
                      },
                      child: Text(
                        "Github",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("📍 Dhaka,BD"),
                    TextButton(
                      onPressed: () async {
                        final Uri url = Uri.parse(AboutData.linkedin);

                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch email client';
                        }
                      },
                      child: Text(
                        "LinkedIn",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("                     "),
                    TextButton(
                      onPressed: () async {
                        final Uri giturl = Uri.parse(AboutData.facebook);

                        if (await canLaunchUrl(giturl)) {
                          await launchUrl(giturl);
                        } else {
                          throw 'Could not launch email client';
                        }
                      },
                      child: Text(
                        "Facebook",
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
